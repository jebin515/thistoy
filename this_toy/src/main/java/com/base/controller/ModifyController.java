package com.base.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.entity.UserVO;
import com.base.service.user.UserService;
import com.base.session.LoginCommand;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/edit/*")
@RequiredArgsConstructor
public class ModifyController {
		
	private final UserService userService;
	
	@GetMapping("/modify")
	public void editmypageGET() {
		System.out.println("내정보수정GET");
	}
	
	@PostMapping("/modify")
	public String editmypagePOST(@Valid UserVO vo,HttpSession session,@Valid LoginCommand loginCommand,Model model) {
		System.out.println("내정보수정POST");
		
		//비밀번호 확인
		try {
			userService.pwCheck(loginCommand);
		} catch (Exception e) {
			return "/edit/modifyfail";
		}
		//수정 메소드
		userService.userModify(vo);
		System.out.println("수정성공");
		//수정 완료시 세션끊고 로그인화면으로
		session.invalidate();
		return "/edit/modifysuccess";
	}
	
}
