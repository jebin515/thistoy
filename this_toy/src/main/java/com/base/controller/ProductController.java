package com.base.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.base.entity.DccPageVO;
import com.base.entity.ListPageVO;
import com.base.entity.ProductVO;
import com.base.service.category.CategoryService;
import com.base.service.product.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@Log4j
@AllArgsConstructor
public class ProductController {
	private ProductService service;
	private CategoryService service2;
	@GetMapping("detail_writer")
	public String registerget(Model model, HttpServletRequest request,RedirectAttributes rttr) {
		HttpSession session = request.getSession();
		session.setAttribute("userId", "이름이뭘까");
		String userId = (String)session.getAttribute("userId");
		if(userId == null) {
			rttr.addFlashAttribute("fail","fail");
			return "redirect:/";
		}
		model.addAttribute("list",service2.getList());
		return "product/detail_writer";
	}
	@PostMapping("detail_writer")
	public String register(ProductVO vo, MultipartFile[] mainFiles,MultipartFile[] infoFiles,HttpServletRequest request) {
		ServletContext ctx = request.getServletContext();
		String mainnames = null;
		String infonames = null;
		for(MultipartFile file:mainFiles) {
		if(file.getSize()==0) continue;
		String fileName = file.getOriginalFilename();
		mainnames += fileName.concat(",");
		System.out.println("fileName:"+fileName);
		String webPath = "/resources/upload/product/main";
		String realPath = ctx.getRealPath(webPath);
		System.out.println(realPath);
		File savePath = new File(realPath);
		if(!savePath.exists()) {
			savePath.mkdirs();
		}
		realPath += File.separator+fileName;
		File  saveFile = new File(realPath);
		try {
			file.transferTo(saveFile);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		for(MultipartFile file:infoFiles) {
			if(file.getSize()==0) continue;
			String fileName = file.getOriginalFilename();
			infonames += fileName.concat(",");
			System.out.println("fileName:"+fileName);
			String webPath = "/resources/upload/product/info";
			String realPath = ctx.getRealPath(webPath);
			System.out.println(realPath);
			File savePath = new File(realPath);
			if(!savePath.exists()) {
				savePath.mkdirs();
			}
			realPath += File.separator+fileName;
			File  saveFile = new File(realPath);
			try {
				file.transferTo(saveFile);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
		mainnames=mainnames.substring(4,mainnames.lastIndexOf(","));
		infonames=infonames.substring(4,infonames.lastIndexOf(","));
		vo.setProductMainImg(mainnames);
		vo.setProductInfoImg(infonames);
		service.register(vo);
		return "redirect:/";
	}
	@GetMapping("list")
	public void getList(@RequestParam(name="dcc", defaultValue="") String downCaCode,Model model,@RequestParam(name = "p",defaultValue = "1")int pageNum,
			@RequestParam(name="search",defaultValue = "")String search) {
//		System.out.println(search);
		DccPageVO vo = new DccPageVO();
		vo.setDownCaCode(downCaCode);
		vo.setSearch(search);
		int count = service.getTotal(vo);
		ListPageVO listvo = new ListPageVO(count, 1);
		if(pageNum < 1) {
			pageNum = 1;
		}else if(pageNum > listvo.getRealEnd()) {
			pageNum=listvo.getRealEnd();
		}
		vo.setPageNum(pageNum);
		model.addAttribute("pdList",service.getList(vo)); // 페이지넘버와 하위카테고리 번호로 출력시킬 리스트 가져오기
		model.addAttribute("search",search); // 검색어 가져가기
		model.addAttribute("dcname",service2.getDcName(downCaCode)); // 현재가 어떤 카테고리인지 이름을 띄워주기 위해 작업
		model.addAttribute("dcList",service2.getList()); // 각 카테고리에 value값을 주기 위한 설정
		if(count>0) {
		model.addAttribute("pageMaker",new ListPageVO(count, pageNum)); // 페이징 처리를위한 설정
		}
	}
	@GetMapping("detail_main")
	public void getDetailMain() {
		
	}
}
