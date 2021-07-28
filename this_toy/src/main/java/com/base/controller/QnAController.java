package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.entity.QnAVO;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/QnA/*")
public class QnAController {

//	@PostMapping(value = "cart", produces = "application/text; charset=UTF-8")
//	public String registerQnA(@RequestBody QnAVO vo) {
//		
//	}
}
