package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.base.entity.UserVO;
import com.base.mapper.AdminMapper;
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
	
	@PostMapping(value = "delete/{userId}")
	public String deleteMember(@PathVariable("userId") String userId) {
		service.deleteMember(userId);
	    return "redirect:/admin/admin";
	    
	}

}
