package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.base.entity.NoticeVO;
import com.base.entity.PageVO;
import com.base.entity.SearchVO;
import com.base.service.notice.NoticeService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@RequestMapping("/notice/*")
@Log4j
public class NoticeController {

	private final NoticeService service;

	@GetMapping("/notice")
	public void list(@RequestParam(name = "p", defaultValue = "1") int pageNum, 
			@RequestParam(name = "type", defaultValue = "1") int titleNum,
			@RequestParam(name = "keyword", defaultValue = "") String search, Model model) {
		SearchVO svo = new SearchVO();
		svo.setTitleNum(titleNum);
		svo.setSearch(search);
		int count = 0;
		count = service.getSearchTotalCount(svo);
		PageVO vo = new PageVO(count, 1);
		if (pageNum == 0) {
			pageNum = 1;
		} else if (pageNum > vo.getRealEnd()) {
			pageNum = vo.getRealEnd();
		}
		svo.setPageNum(pageNum);
		model.addAttribute("list", service.getListwithPagingSearch(svo));
		if(count!=0) {
			model.addAttribute("pageMaker", new PageVO(count, pageNum));
		}
	}

	@PostMapping("/notice_writer")
	public String register(NoticeVO notice) {
		int count = service.register(notice);
		return "redirect: /notice/notice"; // 다시목록으로 이동
	}
	@GetMapping("/notice_writer")
	public void register() {
		
	}

	@GetMapping({ "/notice_detail", "/notice_modify" })
	public void get(@RequestParam("noticeNum") Long noticeNum, Model model) {

		model.addAttribute("notice", service.get(noticeNum));
	}

	@PostMapping("/notice_modify")
	public String modify(NoticeVO notice) {

		int count = service.modify(notice);
		return "redirect: /notice/notice";
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("noticeNum") Long noticeNum) {
		service.remove(noticeNum);
		return "redirect: /notice/notice";
	}

}
