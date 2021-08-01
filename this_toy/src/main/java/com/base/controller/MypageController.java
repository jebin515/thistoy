package com.base.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.entity.ProductVO;
import com.base.entity.WishlistVO;
import com.base.service.QnA.QnAService;
import com.base.service.Review.ReviewService;
import com.base.service.mypage.MypageService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/mypage/*")
public class MypageController {

	private MypageService service;
	private QnAService qaservice;
	private ReviewService reservice;

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
		model.addAttribute("user", service.getUser(userId));
	}

	@GetMapping("mypage_sellbox")
	public void getSellbox(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		model.addAttribute("sellbox", service.getSellbox(userId));
		model.addAttribute("user", service.getUser(userId));
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
			int productEa = vo.get(i).getProductEa();
			String productCode = vo.get(i).getProductCode();
			ProductVO productvo = service.getCart(productCode);
			productvo.setProductEa(productEa);
			pvo.add(productvo);
		}
		System.out.println(pvo);
		model.addAttribute("cartlist", pvo);
	}

	@GetMapping("mypage_orderbox")
	public void getOrderbox(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		ArrayList<OrdersVO> vo = service.getOrderList(userId);
		ArrayList<OrdersVO> pVO = new ArrayList<OrdersVO>();
		for (int i = 0; i < vo.size(); i++) {
			OrdersVO oVO = new OrdersVO();
			oVO.setProductCode(vo.get(i).getProductCode());
			oVO.setUserId(userId);
			oVO.setOrderCode(vo.get(i).getOrderCode());
			System.out.println(service.getProduct(oVO));
			pVO.add(service.getProduct(oVO));
		}
		model.addAttribute("orders", pVO);
		model.addAttribute("user", service.getUser(userId));
	}
	
	
	@GetMapping("mypage_detailorderbox")
	public void getDOrderbox(HttpServletRequest request, Model model,
			@RequestParam(name="pc")String productCode,
			@RequestParam(name="oc")String orderCode,
			@RequestParam(name="seller")String seller) {
		System.out.println(seller);
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		model.addAttribute("order",service.getOrder(orderCode));
		model.addAttribute("product",service.getProduct2(productCode));
		model.addAttribute("user", service.getUser(userId));//주문자 정보
		model.addAttribute("seller", service.getSeller(seller));//판매자정보
		}
	
	@GetMapping("mypage_review")
	public void getReview(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		
		model.addAttribute("review", service.getReviewList(userId));
		model.addAttribute("qna", service.getQnaList(userId));
		model.addAttribute("user", service.getUser(userId));
		
		
	}
	
	@GetMapping("QnAdelete")
	public String qnaDelete(@RequestParam(name="qc")int questionCode) {
		int count = qaservice.removeQnA(questionCode);
		
		return "redirect:/mypage/mypage_review";
	}
	
	@GetMapping("reviewdelete")
	public String reviewdelete(@RequestParam(name="rc")int reviewCode) {
		int count = reservice.removeReview(reviewCode);
		
		return "redirect:/mypage/mypage_review";
	}
	
	@GetMapping("orderdelete")
	public String orderdelete(@RequestParam(name="oc")String orderCode) {
		service.orderdelete(orderCode);
		return "redirect:/mypage/mypage_orderbox";
	}
	
	@ResponseBody
	@DeleteMapping(value="cart/delete/{productCode}/{userId}",produces = "application/text; charset=UTF-8")
	public String deleteCart(@PathVariable("productCode")String productCode,
			@PathVariable("userId")String userId) {
		CartVO vo = new CartVO();
		vo.setProductCode(productCode);
		vo.setUserId(userId);
		System.out.println(vo);
		service.deleteCart(vo);
		return "상품을 삭제하였습니다";
	}
}
 