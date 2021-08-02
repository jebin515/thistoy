package com.base.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.base.entity.CartVO;
import com.base.entity.DccPageVO;
import com.base.entity.ListPageVO;
import com.base.entity.PageVO;
import com.base.entity.ProductVO;
import com.base.entity.QnAVO;
import com.base.entity.WishlistVO;
import com.base.service.QnA.QnAService;
import com.base.service.Review.ReviewService;
import com.base.service.category.CategoryService;
import com.base.service.mypage.MypageService;
import com.base.service.product.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@Log4j
@AllArgsConstructor
public class ProductController {
	private ProductService prService;
	private CategoryService CaService;
	private ReviewService rvService;
	private QnAService qnaService;
	private MypageService myService;

	@GetMapping("detail_writer")
	public String registerget(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		model.addAttribute("list", CaService.getList());
		return "product/detail_writer";
	}

	@PostMapping("detail_writer")
	public String register(ProductVO vo, MultipartFile[] mainFiles, MultipartFile[] infoFiles,
			HttpServletRequest request, RedirectAttributes rttr) {
		System.out.println(mainFiles[0].getSize());
		if (mainFiles[0].getSize() == 0 || infoFiles[0].getSize() == 0) {
			rttr.addFlashAttribute("fail", "noimg");
			return "redirect:/product/detail_writer";
		}
		ServletContext ctx = request.getServletContext();
		String mainnames = null;
		String infonames = null;
		for (MultipartFile file : mainFiles) {
			if (file.getSize() == 0)
				continue;
			String fileName = file.getOriginalFilename();
			mainnames += fileName.concat(",");
			System.out.println("fileName:" + fileName);
			String webPath = "/resources/upload/product/main";
			String realPath = ctx.getRealPath(webPath);
			System.out.println(realPath);
			File savePath = new File(realPath);
			if (!savePath.exists()) {
				savePath.mkdirs();
			}
			realPath += File.separator + fileName;
			File saveFile = new File(realPath);
			try {
				file.transferTo(saveFile);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		for (MultipartFile file : infoFiles) {
			if (file.getSize() == 0)
				continue;
			String fileName = file.getOriginalFilename();
			infonames += fileName.concat(",");
			System.out.println("fileName:" + fileName);
			String webPath = "/resources/upload/product/info";
			String realPath = ctx.getRealPath(webPath);
			System.out.println(realPath);
			File savePath = new File(realPath);
			if (!savePath.exists()) {
				savePath.mkdirs();
			}
			realPath += File.separator + fileName;
			File saveFile = new File(realPath);
			try {
				file.transferTo(saveFile);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		mainnames = mainnames.substring(4, mainnames.lastIndexOf(","));
		infonames = infonames.substring(4, infonames.lastIndexOf(","));
		vo.setProductMainImg(mainnames);
		vo.setProductInfoImg(infonames);
		prService.register(vo);
		return "redirect:/";
	}

	@GetMapping("list")
	public void getList(@RequestParam(name = "dcc", defaultValue = "") String downCaCode, Model model,
			@RequestParam(name = "p", defaultValue = "1") int pageNum,
			@RequestParam(name = "search", defaultValue = "") String search,
			@RequestParam(name = "bn", defaultValue = "") String bn) {
		DccPageVO vo = new DccPageVO();
		vo.setDownCaCode(downCaCode);
		vo.setSearch(search);
		vo.setBn(bn);
		int count = prService.getTotal(vo);
		ListPageVO listvo = new ListPageVO(count, 1);
		if (pageNum < 1) { // 페이지가1인상태에서 이전페이지가기 눌렀을때 1페이지로 보내기위한 설정
			pageNum = 1;
		} else if (pageNum > listvo.getRealEnd()) { // 마지막페이지에서 다음페이지가기 눌렀을대 마지막페이지로 이동 시키기위한 설정
			pageNum = listvo.getRealEnd();
		}
		vo.setPageNum(pageNum);
		ArrayList<ProductVO> pVO = prService.getList(vo);
		for (int i = 0; i < pVO.size(); i++) {
			pVO.get(i).setRatingAvg(rvService.getReviewAvg(pVO.get(i).getProductCode()));
		}
		model.addAttribute("pdList", pVO);
		model.addAttribute("dpv", vo); // 검색어와 best,new값을 들고가기 위한설정
		model.addAttribute("dcname", CaService.getDcName(downCaCode)); // 현재가 어떤 카테고리인지 이름을 띄워주기 위해 작업
		model.addAttribute("dcList", CaService.getList()); // 각 카테고리에 value값을 주기 위한 설정
		if (count > 0) {
			model.addAttribute("pageMaker", new ListPageVO(count, pageNum)); // 페이징 처리를위한 설정
		}
	}

	@GetMapping("detail_main")
	public void getDetailMain(@RequestParam(name = "pc", defaultValue = "1") String productCode,
			@RequestParam(name = "p", defaultValue = "1") int pageNum, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		QnAVO qnavo = new QnAVO();
		qnavo.setQnaCount(10);
		qnavo.setProductCode(productCode);
		PageVO vo = new PageVO();
		vo.setProductCode(productCode);
		int count = rvService.getReviewTotalCount(productCode);
		PageVO vo2 = new PageVO(count, 1);
		if (pageNum < 1) { // 페이지가1인상태에서 이전페이지가기 눌렀을때 1페이지로 보내기위한 설정
			pageNum = 1;
		} else if (pageNum > vo2.getRealEnd()) { // 마지막페이지에서 다음페이지가기 눌렀을대 마지막페이지로 이동 시키기위한 설정
			pageNum = vo2.getRealEnd();
		}
		vo.setPageNum(pageNum);
		if(userId!=null) {
		model.addAttribute("order",myService.getOrderList(userId));
		}
		model.addAttribute("wish", myService.getWish(productCode));
		model.addAttribute("product", prService.getProduct(productCode)); // 선택된 상품 정보 가져가기
		model.addAttribute("review", rvService.getReview(vo)); // 리뷰 가져가기
		model.addAttribute("pageMaker", new PageVO(count, pageNum)); // 리뷰 페이징 처리
		model.addAttribute("QnA", qnaService.getQnA(qnavo)); // QnA 가져가기
		model.addAttribute("QnACount", qnaService.QnATotalCount(productCode)); // QnA 총 개수 가져가기
	}

	@PostMapping("delete")
	public  String deleteProduct(@RequestParam(name = "pc") String productCode) {
		int count =  prService.removeProduct(productCode);
		return "redirect:/";
	}
	@ResponseBody
	@PostMapping(value = "cart", produces = "application/text; charset=UTF-8")
	public String insertCart(@RequestBody CartVO vo) {
		int cartcount = prService.cartCount(vo);
		if (cartcount >= 1) {
			return "이미 장바구니에 추가된 상품입니다.";
		}
		int count = prService.registerCart(vo);
		return count == 1 ? "장바구니에 등록하였습니다." : "잘못된 동작입니다.";
	}

	@ResponseBody
	@PostMapping(value = "wishList", produces = "application/text; charset=UTF-8")
	public String insertWishList(@RequestBody WishlistVO vo) {
		System.out.println(vo);
		int wishcount = prService.wishCount(vo);
		if (wishcount >= 1) {
			prService.deleteWish(vo);
			return "찜목록에서 취소했습니다.";
		}
		int count = prService.registerWish(vo);
		return count == 1 ? "찜목록에 등록하였습니다." : "잘못된 동작입니다.";
	}
}
