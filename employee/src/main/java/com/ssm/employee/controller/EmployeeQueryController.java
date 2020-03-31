package com.ssm.employee.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.pagehelper.PageInfo;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.pojo.JobInfo;
import com.ssm.employee.pojo.Master;
import com.ssm.employee.pojo.SkillInfo;
import com.ssm.employee.pojo.UserInfo;
import com.ssm.employee.service.EmployeeInfoService;
import com.ssm.employee.service.JobInfoService;
import com.ssm.employee.service.MasterService;
import com.ssm.employee.service.SkillInfoService;

@Controller
@SessionAttributes({"tiaojian"})
public class EmployeeQueryController {
	@Autowired
	private MasterService masterService;	
	@Autowired
	private EmployeeInfoService employeeInfoService;
	@Autowired
	private JobInfoService jobInfoService;
	@Autowired
	private SkillInfoService skillInfoService;
	public void setMasterService(MasterService masterService) {
		this.masterService = masterService;
	}

	public void setEmployeeInfoService(EmployeeInfoService employeeInfoService) {
		this.employeeInfoService = employeeInfoService;
	}
	
	public void setJobInfoService(JobInfoService jobInfoService) {
		this.jobInfoService = jobInfoService;
	}

	public void setSkillInfoService(SkillInfoService skillInfoService) {
		this.skillInfoService = skillInfoService;
	}

	@RequestMapping(value="/empUpdate", method= {RequestMethod.POST, RequestMethod.GET})
	public String updateEmp(EmployeeInfo emp,Model model, HttpServletRequest request) throws UnsupportedEncodingException  {
		request.setCharacterEncoding("utf-8");
		System.out.println(request.getParameter("nameCn"));
		System.out.println("\t"+emp);
		employeeInfoService.updateEmp(emp);
		//获取技能信息，并更新或添加
		String[] skillcodes = request.getParameterValues("skillcode");
		System.out.println(Arrays.toString(skillcodes));
		String[] levelcodes = request.getParameterValues("levelcode");
		List<SkillInfo> skills = new ArrayList<SkillInfo>();
		for(int i=0; i< skillcodes.length; i++) {
			SkillInfo si = new SkillInfo();
			si.setEid(emp.getEid());
			si.setSkill(new Master());
			si.getSkill().setCode(skillcodes[i]);
			
			Master level = new Master();
			level.setCode(levelcodes[i]);
			si.setLevel(level);
			UserInfo ui = (UserInfo)request.getSession().getAttribute("user");
			System.out.println(ui);
			si.setUpdUserId(ui.getEid());
			skills.add(si);
		}
		for(SkillInfo s : skills) {
			System.out.println(s);
		}
		skillInfoService.updateOrInsetSkill(skills);
		model.addAttribute("updatesuccess", "ok");
		return "forward:findEmp";
	}
	
	@RequestMapping("/getUpdatetime")
	@ResponseBody
	public String getUpdatTime(String eid) {
		EmployeeInfo emp = employeeInfoService.findEmpByEid(eid);
		return emp.getUpdTimestamp();
	}
	
	//更新eid的详情
	@RequestMapping("/empupdateByeid")
	public String updateEmpByEid(String eid, Model model) {
		System.out.println("\t"+eid);
		model.addAttribute("eid", eid);
		//根据eid查询详情，放入容器中
		EmployeeInfo emp = employeeInfoService.findEmpByEid(eid);
		model.addAttribute("emp", emp);
		List<JobInfo> jobs = jobInfoService.getjobInfosByEid(eid);
		model.addAttribute("jobs", jobs);
		//job的下拉菜单内容查询
		List<Master> jobTitleList = masterService.getMastersBycategoryCode("1010");
		List<Master> deliveryList = masterService.getMastersBycategoryCode("1040");
		List<Master> jdbcTitleList = masterService.getMastersBycategoryCode("1050");
		model.addAttribute("titles", jobTitleList);
		model.addAttribute("deliverys", deliveryList);
		model.addAttribute("jdbcs", jdbcTitleList);
		//site的内容
		List<Master> siteList = masterService.getMastersBycategoryCode("0010");
		model.addAttribute("siteList", siteList);
		//获取eid的所有技能
		List<SkillInfo> skillList = skillInfoService.getSkillsByEid(eid);
		model.addAttribute("skillList", skillList);
		return "employeeUpate";
	}
	
	//查看eid的详情
	@RequestMapping("/empByeid")
	public String getEmpByEid(String eid, Model model) {
		EmployeeInfo emp = employeeInfoService.findEmpByEid(eid);
		model.addAttribute("emp", emp);
		List<JobInfo> jobs = jobInfoService.getjobInfosByEid(eid);
		model.addAttribute("jobs", jobs);
		return "employeReferto1";
	}
	
	@RequestMapping("/pageEmp")
	public String pageEmp(HttpSession session, int pagenum, Model model) {
		Map<String, Object> map = (Map<String, Object>)session.getAttribute("tiaojian");
		PageInfo<EmployeeInfo> page = employeeInfoService.findEmps(map, pagenum);
		model.addAttribute("page", page);
		return "employeDetail";
	}
	
	@RequestMapping(value="/findEmp", method= {RequestMethod.POST, RequestMethod.GET})
	public String findEmp(EmployeeInfo emp, HttpServletRequest request, Model model, HttpSession session) {
		
		Map<String , Object> map = null;
		if(session.getAttribute("tiaojian")!=null) {
			map = (Map<String , Object>)session.getAttribute("tiaojian");
		}else {
			map = new HashMap<>();
			map.put("emp", emp);
			map.put("startDateFrom", request.getParameter("startDateFrom"));
			map.put("startDateTo", request.getParameter("startDateTo"));
			map.put("postCode", request.getParameter("postCode"));
		}
		
		PageInfo<EmployeeInfo> page = employeeInfoService.findEmps(map,1);
			
		if(page.getList().size()>0) {
			model.addAttribute("page", page);
			//在session中保存查询条件
			model.addAttribute("tiaojian", map);
			return "employeDetail";
		}else {
			return "queryResult0";
		}
	}
	
	

	@RequestMapping("/employeQuery")
	public String showQuery(HttpSession session) {
		List<Master> typeList = masterService.getMastersBycategoryCode("0050");
		session.setAttribute("types", typeList);
		List<Master> siteList = masterService.getMastersBycategoryCode("0010");
		session.setAttribute("sites", siteList);
		List<Master> workList = masterService.getMastersBycategoryCode("1090");
		session.setAttribute("works", workList);
		List<Master> jobList = masterService.getMastersBycategoryCode("1050");
		session.setAttribute("job", jobList);
		return "employeQuery";
	}
}
