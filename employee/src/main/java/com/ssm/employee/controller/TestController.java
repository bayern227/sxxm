package com.ssm.employee.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
	@RequestMapping(value="test",method=RequestMethod.POST)
	@ResponseBody
	public void test(String text, HttpServletRequest req) throws UnsupportedEncodingException {
		req.setCharacterEncoding("utf-8");
		System.out.println(text);
	}
}
