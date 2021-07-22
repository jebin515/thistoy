package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/mypage/*")
public class JunTestController {

	@RequestMapping("/mypage_cart")
	public void cart() {
		System.out.println("장바구니");
	}
	
	@RequestMapping("/mypage_detailorderbox")
	public void detail() {
		System.out.println("디테일오더박스");
	}
	
	@RequestMapping("/mypage_orderbox")
	public void orderbox() {
		System.out.println("오더박스");
	}
	
	@RequestMapping("/mypage_review")
	public void review() {
		System.out.println("리뷰 페이지");
	}
	
	@RequestMapping("/mypage_sellbox")
	public void sellbox() {
		System.out.println("셀박스");
	}
	
	@RequestMapping("/mypage")
	public void wishlist() {
		System.out.println("찜 페이지");
	}
	

}
