package com.base.controller;

import java.io.File;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
	//가입페이지로
	@GetMapping("/register-2")
	public void registerGET() throws Exception{
		System.out.println("register - 2   -------------------------------- Get ---------------------------");
//		return "/register/register-2";
	}
	@PostMapping("/register-2")
	public String registerPOST(UserVO userVO,HttpServletRequest request, RedirectAttributes rttr,MultipartFile file) throws Exception {
//        연속등록 불가능하도록 플래시어트리뷰트 후 리다이렉트
		
		ServletContext ctx = request.getServletContext();
		String fileName = file.getOriginalFilename();
		String webPath = "/resources/upload/user";
		String realPath = ctx.getRealPath(webPath);
		System.out.println(realPath);
		File savePath = new File(realPath);
		if(!savePath.exists()) {
			savePath.mkdir();
		}
		realPath += File.separator + fileName;
		File saveFile = new File(realPath);
		file.transferTo(saveFile);
		userVO.setUserImg(fileName);
		
        rttr.addFlashAttribute("result", "success");
		int result = userService.idCheck(userVO);
		int result2 = userService.emailCheck(userVO);
		try {
			if(result >= 1) {
				return "/register/alreadyid";
			}else if (result2 >= 1) {
				return "/register/alreadyemail";
			}else if (result ==0 && result2==0) {
				userService.register(userVO);
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
	
	
	
	private final JavaMailSender mailSender;
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheckGET(String semail) throws Exception {

		/* 뷰(View)로부터 넘어온 데이터 확인 */
		System.out.println("GET이메일 데이터 전송 확인");
		System.out.println("이메일: " + semail);
		Random random = new Random();
		int num = random.nextInt(8999)+1000;
		System.out.println("인증번호 :" + num);
		
		
		String setFrom = "gihadaim@gmail.com";
		String toMail = semail;
		String title = "디스토이에 오신 것을 환영합니다!";
		String content = "안녕하세요! 인증번호는     "+num+"     입니다.";
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
	
}//class end
