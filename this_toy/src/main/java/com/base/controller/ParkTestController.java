package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/register/*")
public class ParkTestController {

	@RequestMapping("/register-1")
	public void register1() {
		System.out.println("register1 페이지");
	}

	@RequestMapping("/register-2")
	public void register2() {
		System.out.println("register2 페이지");
	}

	@RequestMapping("/register-3")
	public void register3() {
		System.out.println("register3 페이지");
	}
}
