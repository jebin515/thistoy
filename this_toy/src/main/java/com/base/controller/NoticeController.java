package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

		@RequestMapping("/notice")
		public void test() {
			
		}
}
