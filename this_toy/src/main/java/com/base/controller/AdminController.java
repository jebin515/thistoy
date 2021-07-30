package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public void admin(Model model) {
		model.addAttribute("admin", service.admin());
	}
	
	@PostMapping("delete")
	public String delete(@RequestParam("userId") String userId) {
		System.out.println(userId);
		service.deleteMember(userId);
		return "redirect:/admin/admin";
	}

}
