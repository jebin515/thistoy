package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		
		@GetMapping("/notice_writer")
		public void registerGET() {
			
		}
		
		@PostMapping("/notice_writer")
		public String register(NoticeVO notice, RedirectAttributes rttr) {
			
			log.info("notice: " + notice);
			
			Long noticeNum = service.register(notice);
			
			log.info("NoticeNum: " + noticeNum);
			rttr.addFlashAttribute("result", noticeNum);
			
			return "redirect: /notice/notice";
		}
		
		@GetMapping("/notice_detail")
		public void get(@RequestParam("noticeNum") Long noticeNum, Model model) {
			
			model.addAttribute("notice", service.get(noticeNum));
		}
		
		@PostMapping("/modify")
		public String modify(NoticeVO notice, RedirectAttributes rttr) {
			
			int count = service.modify(notice);
			
			if(count == 1) {
				rttr.addFlashAttribute("result", "success");
			}
			return "redirect: /notice/notice";
		}
		
		@PostMapping("/remove")
		public String remove(@RequestParam("noticeNum")Long noticeNum, RedirectAttributes rttr) {
			
			int count = service.remove(noticeNum);
			
			if(count == 1) {
				rttr.addFlashAttribute("result", "success");
			}
			return "redirect: /notice/notice";
		}
		
}
