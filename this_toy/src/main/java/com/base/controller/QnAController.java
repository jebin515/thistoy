package com.base.controller;

import java.util.ArrayList;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@PostMapping(value = "new")
	public QnAVO registerQnA(@RequestBody QnAVO vo) {
		int count = service.registerQnA(vo);
		return service.getLastQnA();
	}
	@ResponseBody
	@GetMapping(value = "more/{productCode}/{QnANum}")
	public ArrayList<QnAVO> registerQnA(@PathVariable("QnANum") int QnANum,@PathVariable("productCode") String productCode) {
		QnAVO vo = new QnAVO();
		vo.setQnaCount(QnANum);
		vo.setProductCode(productCode);
		System.out.println(vo);
		System.out.println(service.getQnA(vo));
		return service.getQnA(vo);
	}
	@GetMapping(value = "reply")
	public String replyQnA(@RequestParam(name="qc")int questionCode,@RequestParam(name="rt") String replyText,@RequestParam(name="pc") String productCode) {
		QnAVO vo = new QnAVO();
		vo.setQuestionCode(questionCode);
		vo.setReplyText(replyText);
		System.out.println(vo);
		int count = service.replyQnA(vo);
		return "redirect:/product/detail_main?pc="+productCode+"&reply";
	}
	@ResponseBody
	@DeleteMapping(value = "reply/delete/{questionCode}",produces = "application/text; charset=UTF-8")
	public String deleteQnA(@PathVariable("questionCode")int questionCode) {
		int count = service.removeReply(questionCode);
		System.out.println(count);
		return "답글을 삭제하였습니다.";
	}
	@GetMapping(value = "delete")
	public String deleteQnA(@RequestParam(name="qc")int questionCode,@RequestParam(name="pc") String productCode) {
		int count = service.removeQnA(questionCode);
		return "redirect:/product/detail_main?pc="+productCode+"&reply";
	}
}
