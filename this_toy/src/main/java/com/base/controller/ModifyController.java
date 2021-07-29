package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/edit/*")
public class ModifyController {
	
	@RequestMapping("/editmypage")
	public void editmypage() {
		System.out.println("내정보수정");
	}
}
