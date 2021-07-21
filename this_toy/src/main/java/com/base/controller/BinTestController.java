package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product/*")
public class BinTestController {
	
	@RequestMapping("/detail_writer")
	public void writer() {
		
	}
	@RequestMapping("/list")
	public void list() {
		
	}
	@RequestMapping("/questionpop")
	public void write() {
		
	}

}
