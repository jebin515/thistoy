package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.entity.UserVO;
import com.base.service.admin.AdminService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/admin/*")
public class AdminController {
	private AdminService service;
	
	@RequestMapping("/admin")
	public void admin(Model model, UserVO vo) {
		model.addAttribute("admin", service.admin());
		
	}
	

}
