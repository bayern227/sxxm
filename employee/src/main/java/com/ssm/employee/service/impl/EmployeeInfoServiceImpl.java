package com.ssm.employee.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.employee.dao.EmployeeInfoMapper;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.service.EmployeeInfoService;
@Service
public class EmployeeInfoServiceImpl implements EmployeeInfoService {
	@Autowired
	private EmployeeInfoMapper employeeInfoMapper;
	
	public void setEmployeeInfoMapper(EmployeeInfoMapper employeeInfoMapper) {
		this.employeeInfoMapper = employeeInfoMapper;
	}

	@Override
	public PageInfo<EmployeeInfo> findEmps(Map<String, Object> map, int pageNo) {
		//设置分页的页码、每页记录数
		PageHelper.startPage(pageNo, 10, "e.eid asc");
		//查询全部符合条件的记录
		List<EmployeeInfo> list = employeeInfoMapper.findEmps(map);
		//设置分页信息（当前页码、每页个数、总记录数、总页数、前一页页码、后一页页码、是否第一页、是否最后一页、当前页的记录。。。）
		PageInfo<EmployeeInfo> page = new PageInfo<>(list);
		return page;
	}

	@Override
	public EmployeeInfo findEmpByEid(String eid) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.findEmpByEid(eid);
	}

	@Override
	public int updateEmp(EmployeeInfo emp) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.updateEmp(emp);
	}

}
