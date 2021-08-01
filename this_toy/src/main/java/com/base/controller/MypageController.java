package com.base.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
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
	public void getWishList(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		ArrayList<WishlistVO> vo = service.getProductCode(userId);
		ArrayList<ProductVO> pvo = new ArrayList<>();
		String productCode1 = vo.get(0).getProductCode();
		System.out.println(productCode1);
		for (int i = 0; i < vo.size(); i++) {
			String productCode = vo.get(i).getProductCode();
			pvo.add(service.getWishList(productCode));
		}
		System.out.println(pvo);
		model.addAttribute("wishList", pvo);
	}

	@GetMapping("mypage_sellbox")
	public void getSellbox(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		model.addAttribute("sellbox", service.getSellbox(userId));
	}
	
	@GetMapping("mypage_cart")
	public void getCart(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		ArrayList<CartVO> vo = service.getProductCode3(userId);
		ArrayList<ProductVO> pvo = new ArrayList<>();
		String productCode3 = vo.get(0).getProductCode();
		System.out.println(productCode3);
		for (int i = 0; i < vo.size(); i++) {
			int productEa=vo.get(i).getProductEa();
			String productCode = vo.get(i).getProductCode();
			ProductVO productvo =service.getCart(productCode);
			productvo.setProductEa(productEa);
			pvo.add(productvo);
		}
		System.out.println(pvo);
		model.addAttribute("cartlist", pvo);
	}
	
	@GetMapping("mypage_orderbox")
	public void getOrderbox (HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		
	}
	
	
	
	

}
