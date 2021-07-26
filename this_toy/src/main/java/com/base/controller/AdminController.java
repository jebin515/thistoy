package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.service.admin.AdminService;
import com.base.service.main.MainService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/*")
public class AdminController {
	private AdminService service;

}
