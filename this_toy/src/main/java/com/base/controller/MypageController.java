package com.base.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.entity.ProductVO;
import com.base.entity.WishlistVO;
import com.base.service.mypage.MypageService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/mypage/*")
public class MypageController {
	
	private MypageService service;
	
	@GetMapping("mypage_wishlist")
	public void getWishList(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		ArrayList<WishlistVO> vo = service.getProductCode(userId);
		ArrayList<ProductVO> pvo = new ArrayList<>();
		String productCode1= vo.get(0).getProductCode();
		System.out.println(productCode1);
		for(int i=0; i<vo.size(); i++) {
			String productCode= vo.get(i).getProductCode();
			pvo.add(service.getWishList(productCode));
		}
		System.out.println(pvo);
		model.addAttribute("wishList",pvo);
	}
	
}
