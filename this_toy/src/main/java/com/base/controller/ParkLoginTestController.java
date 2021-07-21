package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/login/*")
public class ParkLoginTestController {

	@RequestMapping("/login")
	public void login() {
		System.out.println("로그인 페이지");
		log.info("로그인 페이지");
	}

	@RequestMapping("/loginsuccess")
	public void loginsuccess() {
		System.out.println("로그인 성공");
		log.info("로그인성공 페이지");
	}
}
