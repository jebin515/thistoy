package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
		PageVO pVO= new PageVO(count, 1);
		if (pageNum < 1) { // 페이지가1인상태에서 이전페이지가기 눌렀을때 1페이지로 보내기위한 설정
			pageNum = 1;
		} else if (pageNum > pVO.getRealEnd()) { // 마지막페이지에서 다음페이지가기 눌렀을대 마지막페이지로 이동 시키기위한 설정
			pageNum = pVO.getRealEnd();
		}
		model.addAttribute("userListPaging",new PageVO(count, pageNum));
		model.addAttribute("admin", service.userListPaging(pageNum));
	}
	
	@PostMapping("delete/{userId}")
	   public String deleteMember(@PathVariable(name="userId")String userId) {
		System.out.println(userId);
	      service.deleteMember(userId);
	       return "redirect:/admin/admin";
	   }
}


	
