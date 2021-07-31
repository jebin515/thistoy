package com.base.controller;

import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
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
			session.setAttribute("userId", authInfo.getUserId());
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
	
	@GetMapping("/navercall")
	public @ResponseBody String naverCallback(String code) { //@ResponseBody  ) data를 리턴해주는 컨트롤러 함수
		System.out.println("네이버 콜백 페이지 띄움");
//		// CSRF 방지를 위한 상태 토큰 검증 검증
//		// 세션 또는 별도의 저장 공간에 저장된 상태 토큰과 콜백으로 전달받은 state 파라미터의 값이 일치해야 함
//		// 콜백 응답에서 state 파라미터의 값을 가져옴
//		String state = request.queryParams(“state”);
//		// 세션 또는 별도의 저장 공간에서 상태 토큰을 가져옴
//		String storedState = request.session().attribute(“state”);
//		if( !state.euals( storedState ) ) {
//		    return RESPONSE_UNAUTHORIZED; //401 unauthorized
//		} else {
//		    Return RESPONSE_SUCCESS; //200 success
//		}
		return "네이버인증완료naver";
	}
	
	@GetMapping("/kakaocallback")
	public @ResponseBody String kakaoCallback(String code) { //@ResponseBody  ) data를 리턴해주는 컨트롤러 함수
		System.out.println("카카오로그인 페이지 띄움");
//		post방식으로 key=value 데이터 요청해야함 (카카오로)
//		 예전자바에선 HttpsURLConnection url =new Http~ 로쓰기도함 (불편)  , Retrofit2 라이브러리, OkHttp 라이브러리 등등 있다
		//http요청 편하게할수있는 라이브러리
		RestTemplate rt = new RestTemplate();   
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8"); //헤더에 컨텐트타입을 담는다는 의미는  내가 전송할 http body 데이터가 key value 데이터라고 알려줌
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");  //원래는 값들을 변수로 바꿔서 넣는게 좋음
		params.add("client_id", "46578e2a852ca11289c2da8422acc9ca");
		params.add("redirect_uri", "http://localhost:9090/login/kakaocallback");
		params.add("code", "authorization_code");
		
		return "kakao done CODE  : "+code;
	}

}// 클래스 종료
