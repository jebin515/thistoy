package com.base.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.entity.ProductVO;
import com.base.service.main.MainService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/*")
public class MainController {
	private MainService service;

	@GetMapping("/")
	public String getBest(Model model) {
		model.addAttribute("best", service.bestList());
		model.addAttribute("newproduct", service.newList());
		return "main";
	}
	@RequestMapping("info")
	public void info() {
		
	}

}
