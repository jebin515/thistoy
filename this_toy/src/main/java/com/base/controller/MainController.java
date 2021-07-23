package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.service.main.MainService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
//@RequestMapping("/main/*")
public class MainController {
	private MainService service;
	
	@GetMapping("/search")
	public void getSearch(String search,Model model) {
		model.addAttribute("search",service.searchList(search));
	}
}
