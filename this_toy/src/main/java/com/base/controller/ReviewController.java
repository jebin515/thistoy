package com.base.controller;

import java.util.ArrayList;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@PostMapping(value = "/new",produces = "application/text; charset=UTF-8")
	public String create(@RequestBody ReviewVO vo) {
		ReviewVO Rvo = service.checkReview(vo);
		if(Rvo!=null) {
			return "이미 리뷰를 작성하였습니다.";
		}
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
	@GetMapping(value="delete")
	public String deleteReview(@RequestParam(name="rc")int reviewCode,@RequestParam(name="pc") String productCode) {
		int count = service.removeReview(reviewCode);
		return  "redirect:/product/detail_main?pc="+productCode+"&review";
	}
	
}
