package com.ssm.employee.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.employee.pojo.Master;
import com.ssm.employee.pojo.SkillInfo;
import com.ssm.employee.service.MasterService;
import com.ssm.employee.service.SkillInfoService;

@Controller
public class SkillController {
	@Autowired
	private SkillInfoService skillInfoService;
	@Autowired
	private MasterService masterService;
	
	public void setSkillInfoService(SkillInfoService skillInfoService) {
		this.skillInfoService = skillInfoService;
	}


	public void setMasterService(MasterService masterService) {
		this.masterService = masterService;
	}

	
	@RequestMapping("/skillUpdate")
	public String toSkill(Model model) {
		List<Master> skills = masterService.getMastersBycategoryCode("1100");
		List<Master> levels = masterService.getMastersBycategoryCode("1110");
		model.addAttribute("skills", skills);
		model.addAttribute("levels", levels);
		return "skillUpdate";
	}
}
