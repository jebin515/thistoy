package com.base.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public String admin(Model model, @RequestParam(name = "p", defaultValue = "1") int pageNum,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		if(!userId.equals("admin")) {
			return "redirect:/main";
		}
		int count = service.getTotal();
		PageVO pVO = new PageVO(count, 1);
		if (pageNum < 1) { 
			pageNum = 1;
		} else if (pageNum > pVO.getRealEnd()) { 
			pageNum = pVO.getRealEnd();
		}
		model.addAttribute("userListPaging", new PageVO(count, pageNum));
		model.addAttribute("admin", service.userListPaging(pageNum));
		return "admin/admin";
	}

	@PostMapping("delete/{userId}")
	public String deleteMember(@PathVariable(name = "userId") String userId) {
		System.out.println(userId);
		service.deleteMember(userId);
		return "redirect:/admin/admin";
	}
}
