package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.base.entity.QnAVO;
import com.base.service.QnA.QnAService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/QnA/*")
public class QnAController {
	private QnAService service;
	
	@ResponseBody
	@PostMapping(value = "new", produces = "application/text; charset=UTF-8")
	public String registerQnA(@RequestBody QnAVO vo) {
		int count = service.registerQnA(vo);
		return count==1? "문의글을 등록하였습니다.":"등록에 실패했습니다.";
	}
}
