package com.base.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.base.entity.ProductVO;
import com.base.service.product.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@Log4j
@AllArgsConstructor
public class ProductController {
	private ProductService service;
	
	@GetMapping("detail_writer")
	public void registerget(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("userId", "재빈");
	}
	@PostMapping("detail_writer")
	public String register(ProductVO vo, MultipartFile[] mainFiles,MultipartFile[] infoFiles,HttpServletRequest request) {
		ServletContext ctx = request.getServletContext();
		for(MultipartFile file:mainFiles) {
		String fileName = file.getOriginalFilename();
		System.out.println("fileName:"+fileName);
		String webPath = "/resources/upload";
		String realPath = ctx.getRealPath(webPath);
		System.out.println(realPath);
		}
//		service.register(vo);
		return "redirect:/";
	}
}
