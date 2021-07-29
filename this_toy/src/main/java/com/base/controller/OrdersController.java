package com.base.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.service.orders.OrdersService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
@RequestMapping("/orders/*")
public class OrdersController {
	@Autowired
	private OrdersService service;
	
	private IamportClient api = new IamportClient("9935225488488363",
			"42VKSjQQgdnutTWiJq7BNN0vt2anFEPJGKuz4kplyNP2GLlpcs10f1vJ3G6JkWt1GXALi06QOVTuHeUT");

	@RequestMapping(value = "cart")
	public String cart(Model model,CartVO vo) {
		model.addAttribute("pdc",service.getcart(vo));
		return "orders/orders";
	}
	
	@GetMapping(value = "direct")
		public String direct(Model model,
				@RequestParam(name="pdc")String productCode,
				@RequestParam(name="user")String userId,
				@RequestParam(name="st")String productStock) {
		
		System.out.println(productCode);
		model.addAttribute("pdc",service.getproduct(productCode));
		model.addAttribute("user",service.getaddr(userId));
		System.out.println(service.getaddr(userId)+"hi");
		model.addAttribute("st",productStock);
		return "orders/orders";
	}

	@ResponseBody
	@PostMapping(value="/orders/{imp_uid}")
	public IamportResponse<Payment> paymentByImpUid(
			@PathVariable("imp_uid") String imp_uid,
			@RequestBody OrdersVO vo
			) throws IamportResponseException, IOException
	{	
		System.out.println(vo);
		System.out.println(api.paymentByImpUid(imp_uid));
		return api.paymentByImpUid(imp_uid);
	}

	@RequestMapping("/orderssuccess")
	public void orderssuccess() {

	}
}
