package com.base.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.base.entity.UserVO;
import com.base.service.user.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("/login/*")
@RequiredArgsConstructor
@Log4j
public class LoginController {

	private final UserService userService;
	
	
	@GetMapping("/login")
	public String loginGET() {
		System.out.println("로그인 페이지");
		return "/login/login";
//		@ModelAttribute("userVO") UserVO userVO
	}
	@PostMapping("/loginsuccess")
	public String loginPOST(UserVO userVO,HttpServletRequest request, RedirectAttributes rttr) {
//		HttpSession session = request.getSession();
//		UserVO login = userService.login(userVO);
//		if(login == null) {
//			session.setAttribute("member", null);
//			rttr.addFlashAttribute("result", false);
//		}else {
//			session.setAttribute("member", login);
//		}
		//아이디&&비밀번호 검색후 모두 일치하면 result에 1 입력
		int result = userService.loginCheck(userVO);
		try {
			if(result == 1) {
				userService.login(userVO);
				System.out.println(userService.loginCheck(userVO)); //로그인 확인용
				System.out.println("------------------로그인 성공 -----------------------------------");
			}else if (result == 0) {
				System.out.println(userService.loginCheck(userVO));
				System.out.println("------------------로그인 실패 -----------------------------------");
				return "/login/loginfail";
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "/main";
	}
	
	@PostMapping("/logout")
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	@GetMapping("/loginsuccess")
	public void loginsuccess() {
		System.out.println("로그인 성공");
//		return "/main";
	}
	
	
}
