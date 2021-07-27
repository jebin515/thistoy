package com.base.controller;

import java.util.ArrayList;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.base.entity.PageVO;
import com.base.entity.ProductVO;
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
	@ResponseBody
	@GetMapping(value = "/reviewpage/{productCode}/{pageNum}")
	public ArrayList<ReviewVO> reviewList(@PathVariable("productCode") String productCode,@PathVariable("pageNum") int pageNum){
		PageVO vo = new PageVO();
		vo.setProductCode(productCode);
		vo.setPageNum(pageNum);
		System.out.println(vo);
		System.out.println(service.getReview(vo));
		return service.getReview(vo);
	}
}
