package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.base.entity.UserVO;
import com.base.service.user.UserService;

import lombok.RequiredArgsConstructor;


@Controller
@RequestMapping("/register/*")
@RequiredArgsConstructor
public class RegisterController {
	
	private final UserService userService;
	
	@RequestMapping("/register-1")
	public void register1() {
		System.out.println("register-1");
	}
	//가입페이지
	@GetMapping("/register-2")
	public String registerGET() throws Exception{
		return "/register/register-2";
	}
	@PostMapping("/register-2")
	public String registerPOST(UserVO userVo , RedirectAttributes rttr) {
//		String hashedPw = BCrypt.hashpw(userVo.getUserPw(), BCrypt.gensalt());
//        uservo.setUserPw(hashedPw);
        userService.register(userVo);
        //연속등록 불가능하도록 플래시어트리뷰트 후 리다이렉트
        rttr.addFlashAttribute("result", "success");
		
		
		return "redirect:/register/register-3";
		
	}
	
	
	
	
}
