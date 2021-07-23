package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/orders/*")
public class OrdersController {
	
	@RequestMapping("/orders")
	public void orders() {
		
	}
	@RequestMapping("/orderssuccess")
	public void orderssuccess() {
		
	}
}
