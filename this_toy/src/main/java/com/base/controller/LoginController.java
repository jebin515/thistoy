package com.base.controller;

import java.io.IOException;
import java.util.Random;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.base.entity.UserVO;
import com.base.service.user.UserService;
import com.base.session.AuthInfo;
import com.base.session.IdPasswordNotMatchingException;
import com.base.session.LoginCommand;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

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
	}
	//기존 로그인 메소드
	@RequestMapping(value = "/loginsuccess", method = RequestMethod.POST)
	public String loginSuccess(@Valid LoginCommand loginCommand, BindingResult bindingResult,
			HttpSession session,Model model) throws Exception {
		
		if (bindingResult.hasErrors()) {
			return "/login/login";
		}
		try {
			AuthInfo authInfo = userService.loginAuth(loginCommand);
      
			String userId = authInfo.getUserId();
			session.setAttribute("userId", userId);

		} catch (IdPasswordNotMatchingException e) {
			return "/login/loginfail";
		}
		return "redirect:/";
	} //기존 로그인 
	
	
	
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

	
	
	//비밀번호 찾기 메일인증 이용해서 만들려고 했는데 지워도 됨
	@RequestMapping("/findpw")
	public void findPassword() throws Exception {
		
	}
	@PostMapping("/findpwcheck")
	public String findpwcheck(UserVO vo , RedirectAttributes rttr) {
		String userId = vo.getUserId();
		int rs = userService.idCheck(vo);
		if(rs == 0) {
			System.out.println("결과 : "+rs);
			rttr.addFlashAttribute("fail","틀림");
			return "redirect:/login/findpw";
		} else {
			rttr.addAttribute("userId",userId);
			return "redirect:/login/pwchange";
		}
		
	}
	
	@GetMapping("/pwchange")
	public void pwchange(@RequestParam(value = "userId") String userId, Model model) {
		model.addAttribute("userId",userId);
		
	}
	
	@PostMapping("/pwchangesuccess")
	public String pwchangesuccess(UserVO vo , RedirectAttributes rttr){
		String userId = vo.getUserId();
		userService.passwdUpdate(vo);
		rttr.addFlashAttribute("passupdate","성공");
		return "redirect:/";
	}
	
	private final JavaMailSender mailSender;
	@GetMapping("/findpassword")
	@ResponseBody
	public String findPasswordPOST(String semail) throws Exception {
		

		System.out.println("비번찾기 메일보냄페이지");
		System.out.println("이메일: " + semail);
		Random random = new Random();
		int num = random.nextInt(8999)+1000;
		System.out.println("인증번호 :" + num);
		
		
		String setFrom = "gihadaim@gmail.com";
		String toMail = semail;
		String title = "디스토이 비밀번호찾기 인증번호입니다.";
		String content = " 비밀번호 인증번호는     "+num+"     입니다.";
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}
		String Checkcode = Integer.toString(num);
		
		return Checkcode;
	}
	
	@RequestMapping(value="/socailLogin", method = RequestMethod.GET)
	public String socialLogin(UserVO vo, HttpSession session) {
		System.out.println(vo);
		String email = vo.getUserId();
		String social = vo.getUserSocial();
		System.out.println(email);
		System.out.println(social);

		int rs = userService.selectSocialLogin(vo);
		if(rs == 0) {
			int res = userService.insertSocialLogin(vo);
			System.out.println("결과 : "+res);
		}

		session.setAttribute("userId", vo.getUserId());
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/navercallback", method = RequestMethod.GET)
	public String naverCallback() {
		return "/login/navercallback";
	}
	
	
	
	
	
}// 클래스 종료
