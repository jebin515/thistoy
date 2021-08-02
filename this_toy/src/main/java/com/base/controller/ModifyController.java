package com.base.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.base.entity.ProductVO;
import com.base.entity.UserVO;
import com.base.service.mypage.MypageService;
import com.base.service.product.ProductService;
import com.base.service.user.UserService;
import com.base.session.LoginCommand;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/edit/*")
@RequiredArgsConstructor
public class ModifyController {

	private final UserService userService;
	private final MypageService myService;
	private final ProductService prService;

	@GetMapping("/modify")
	public void editmypageGET(HttpServletRequest request, @Valid LoginCommand loginCommand, Model model, UserVO vo) {
		System.out.println("내정보수정GET");

		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		model.addAttribute("user", userService.getmodify(userId));
		System.out.println("수정 유저 : " + userId);
	}

	@PostMapping("/modify")
	public String editmypagePOST(@Valid UserVO vo, HttpSession session, @Valid LoginCommand loginCommand, Model model) {
		System.out.println("내정보수정POST");
		try {
			userService.pwCheck(loginCommand);
		} catch (Exception e) {
			return "/edit/modifyfail";
		}
		userService.userModify(vo);
		System.out.println("수정성공");
		// 수정 완료시 세션끊고 로그인화면으로
		session.invalidate();
		return "/edit/modifysuccess";
	}

	@PostMapping("/delete")
	public String deleteUser(@RequestParam(name = "user") String userId, HttpSession session) {
		ArrayList<ProductVO> pvo = myService.getSellbox(userId);
		if (pvo.size() > 0) {
			for (int i = 0; i < pvo.size(); i++) {
				prService.removeProduct(pvo.get(i).getProductCode());
			}
		}
		userService.deleteUser(userId);
		session.invalidate();
		return "redirect:/";

	}
}
