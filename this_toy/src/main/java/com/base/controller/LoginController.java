package com.base.controller;

import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.base.entity.UserVO;
import com.base.service.user.UserService;
import com.base.session.AuthInfo;
import com.base.session.IdPasswordNotMatchingException;
import com.base.session.LoginCommand;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/login/*")
@RequiredArgsConstructor
@Log4j
public class LoginController {
	
	private final UserService userService;
	
//	@RequestMapping(value = "/home", method = RequestMethod.GET)
//	public String home(Locale locale, Model model,HttpSession session) {
//		// 세션에 있는 정보를 담아준다.
//		model.addAttribute("userType", (String)session.getAttribute("userType") );
//		return "/home";
//	}
	
	@GetMapping("/login")
	public String loginGET() {
		System.out.println("로그인 페이지");
		return "/login/login";
	}
//	@RequestMapping("/logincheck")
////	public Model loginCheck() {
//		public ModelAndView loginCheck(@ModelAttribute UserVO vo, HttpSession session,Model model){
//		boolean result = userService.loginCheck2(vo, session);
//		ModelAndView mav = new ModelAndView();
////		model.addAttribute(null, model);
//		//로그인성공시
//		if(result ==true) {
//			mav.setViewName("/main/main");
//			mav.addObject("mlc","success");
//		}else { //실패시
//			mav.setViewName("/login/login");
//			mav.addObject("mlc","fail");
//		}
//		return mav;
//	}
	
	
	
	//기존 로그인 메소드
	@RequestMapping(value = "/loginsuccess", method = RequestMethod.POST)
	public String loginSuccess(@Valid LoginCommand loginCommand, BindingResult bindingResult,
			HttpSession session,Model model) throws Exception {
		
		if (bindingResult.hasErrors()) {
			return "/login/login";
		}
		try {
			AuthInfo authInfo = userService.loginAuth(loginCommand);
			session.setAttribute("authInfo", authInfo);
		} catch (IdPasswordNotMatchingException e) {
			return "/login/loginfail";
		}
		return "/main";
	} //기존 로그인 
	
	
//	@GetMapping("/logincheck")
//	public void loginCheck() {
//		System.out.println("로그인 성공");
//	}
	@GetMapping("/loginsuccess")
	public void loginsuccess() {
		System.out.println("로그인 GET 성공");
	}

	@GetMapping("/logout")
	public String logoutGET(HttpSession session) {
		session.invalidate();
		System.out.println("로그아웃 GET");
		return "redirect:/";
	}
////	 int방식 로그인 id,pw 검색후 존재하면 로그인
//	@PostMapping("/loginsuccess")
//	public String loginPOST(UserVO userVO,HttpSession session, RedirectAttributes rttr) {
//		//아이디&&비밀번호 검색후 모두 일치하면 result에 1 입력
//		int result = userService.loginCheck(userVO);
//		try {
//			if(result == 1) {
//				userService.login(userVO);
//				System.out.println(userService.loginCheck(userVO)); //로그인 확인용
//				session.setAttribute("loginId", userVO.getUserId());
//				System.out.println("------------------로그인 POST 성공 -----------------------------------");
//			}else if (result == 0) {
//				System.out.println(userService.loginCheck(userVO));
//				System.out.println("------------------로그인 POST 실패 -----------------------------------");
//				return "/login/loginfail";
//			}
//		} catch (Exception e) {
//			throw new RuntimeException();
//		}
//		return "/main";
//	} //int 로그인 종료
	@RequestMapping("/naver")
	public void naver() {
		System.out.println("네이버로그인 페이지 띄움");
	}
	@RequestMapping("/kakao")
	public void kakao() {
		System.out.println("카카오로그인 페이지 띄움");
	}

}// 클래스 종료
