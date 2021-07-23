package com.base.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.service.main.MainService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/*")
public class MainController {
	private MainService service;
	
	@GetMapping("search")
	public void getSearch(String search, Model model) {
		model.addAttribute("search", service.searchList(search));
	}
	
	@GetMapping("main")
	public void getView(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("userId", "유진");
		String userId = (String)session.getAttribute("userId");
//		model.addAttribute("view", service.bestList());
	}
}
