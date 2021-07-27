package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.entity.NoticeVO;
import com.base.service.notice.NoticeService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@RequestMapping("/notice/*")
@Log4j
public class NoticeController {
//		@RequestMapping("/notice")
//		public void test() {

		private final NoticeService service;
	
		@GetMapping("/notice")
		public void list(Model model) {
			log.info("list................................................");
			
			model.addAttribute("list", service.getList());
		}
	
		@PostMapping("/register")
		public void register(NoticeVO notice) {
			
			log.info("notice: " + notice);
			
			Long noticeNum = service.register(notice);
			
			log.info("NoticeNum: " + noticeNum);
		}
			
}
