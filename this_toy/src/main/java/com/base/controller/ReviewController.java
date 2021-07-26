package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.base.entity.ReviewVO;
import com.base.service.Review.ReviewService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {
	private ReviewService service;
	
	@ResponseBody
	@PostMapping(value = "/new")
	public String create(@RequestBody ReviewVO vo) {
		int i = service.register(vo);
		return i==1 ? "success":"fail";
	}
}
