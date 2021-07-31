package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.base.entity.ListPageVO;
import com.base.entity.PageVO;
import com.base.entity.UserVO;
import com.base.service.admin.AdminService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/admin/*")
public class AdminController {
	private AdminService service;

	@RequestMapping("/admin")
	public void admin(Model model, UserVO vo, @RequestParam(name = "p", defaultValue = "1") int pageNum) {
		int count = service.getTotal();
		PageVO pVO = new PageVO(count, 1);
		if (pageNum < 1) { 
			pageNum = 1;
		} else if (pageNum > pVO.getRealEnd()) { 
			pageNum = pVO.getRealEnd();
		}
		model.addAttribute("userListPaging", new PageVO(count, pageNum));
		model.addAttribute("admin", service.userListPaging(pageNum));
	}

	@PostMapping("delete/{userId}")
	public String deleteMember(@PathVariable(name = "userId") String userId) {
		System.out.println(userId);
		service.deleteMember(userId);
		return "redirect:/admin/admin";
	}
}
