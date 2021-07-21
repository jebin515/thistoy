package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/login/*")
public class ParkLoginTestController {

	@RequestMapping("/login")
	public void login() {
		System.out.println("로그인 페이지");
	}

	@RequestMapping("/loginsuccess")
	public void loginsuccess() {
		System.out.println("로그인 성공");
	}
}
