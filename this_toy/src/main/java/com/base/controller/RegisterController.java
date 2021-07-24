package com.base.controller;

import javax.management.RuntimeErrorException;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.base.entity.UserVO;
import com.base.service.user.UserService;

import jdk.internal.org.jline.utils.Log;
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
	//가입페이지로
	@GetMapping("/register-2")
	public String registerGET() throws Exception{
		System.out.println("register - 2   -------------------------------- Get ---------------------------");
		return "/register/register-2";
	}
//	//회원가입
//		@PostMapping("/register-2")
//		public String registerPOST(UserVO userVo) {
////			String hashedPw = BCrypt.hashpw(userVo.getUserPasswd(), BCrypt.gensalt());
////	        userVo.setUserPasswd(hashedPw);
//	        userService.register(userVo);
//	        //연속등록 불가능하도록 플래시어트리뷰트 후 리다이렉트
////	        rttr.addFlashAttribute("result", "success");
//			
//	        System.out.println("register - 2   -------------------------------- Post! ---------------------------");
//			return "redirect:/register/register-3";
//		}
//	(임시)중복체크회원가입
//	@ResponseBody
	@PostMapping("/register-2")
	public String registerPOST(UserVO userVo,Model model) throws Exception {
//		String hashedPw = BCrypt.hashpw(userVo.getUserPasswd(), BCrypt.gensalt());
//        userVo.setUserPasswd(hashedPw);
        //연속등록 불가능하도록 플래시어트리뷰트 후 리다이렉트
//        rttr.addFlashAttribute("result", "success");
		int result = userService.idCheck(userVo);
		try {
			if(result == 1) {
				model.addAttribute("idCheck","alert("+"이미 있는 아이디 입니다.)");
				return "/register/register-2";
			}else if (result == 0) {
				userService.register(userVo);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
        System.out.println("register - 2   -------------------------------- Post! ---------------------------");
        return "redirect:/register/register-3";
	}
	@PostMapping(value ="/idCheck")
	public int idCheck(UserVO uservo) {
		int result = userService.idCheck(uservo);
		return result;
	}
	
	@RequestMapping("/register-3")
	public void register3() {
		System.out.println("가입완료페이지-3");
	}
	
	
	
}
