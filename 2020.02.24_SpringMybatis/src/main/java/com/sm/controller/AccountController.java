package com.sm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.sm.service.AccountService;
@Controller
public class AccountController {
	@Autowired
	private AccountService as;
	
	public void zhuanqiang(String from, String to, double money) {
		as.zhuanzhang(from, to, money);
		System.out.println("×ªÕË³É¹¦");
	}
}
