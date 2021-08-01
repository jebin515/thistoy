package com.base.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.base.entity.ProductVO;
import com.base.service.orders.OrdersService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
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

	@PostMapping(value = "cart")
	public String cart(Model model, 
			@RequestParam(name = "pdc") String[] productCode, HttpServletRequest request,
			@RequestParam(name = "st") int[] productEa) {

		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		model.addAttribute("user", service.getaddr(userId));
		ArrayList<ProductVO> vo = new ArrayList<ProductVO>();
		for (int i = 0; i < productCode.length; i++) {
			ProductVO pVO = service.getcart(productCode[i]);
			pVO.setProductEa(productEa[i]);
			vo.add(pVO);
		}
		model.addAttribute("pdc", vo);

		return "orders/orders";
	}

	@SuppressWarnings("unchecked")
	@ResponseBody
	@PostMapping(value = "/orders/{imp_uid}")
	public IamportResponse<Payment> paymentByImpUid(
			@PathVariable("imp_uid") String imp_uid, 
			@RequestBody Map<String,Object> params, OrdersVO vo)
			throws IamportResponseException, IOException {
			
			ArrayList<String> orderCode = (ArrayList<String>) params.get("orderCode");
			ArrayList<String> orderPrice = (ArrayList<String>) params.get("orderPrice");
			ArrayList<String> productCode = (ArrayList<String>) params.get("productCode");
			ArrayList<String> productName = (ArrayList<String>) params.get("productName");
			ArrayList<String> orderEa = (ArrayList<String>) params.get("orderEa");
			ArrayList<String> productImg = (ArrayList<String>) params.get("productImg");

			for(int i = 0; i < orderCode.size(); i++) {
				vo.setOrderCode(orderCode.get(i));
				vo.setOrderPrice(Integer.valueOf(orderPrice.get(i)));
				vo.setProductCode(productCode.get(i));
				vo.setUserId((String)params.get("userId"));
				vo.setProductName(productName.get(i));
				vo.setOrderEa(Integer.valueOf(orderEa.get(i)));
				vo.setProductImg(productImg.get(i));
				vo.setOrderAddressPost((String)params.get("orderAddressPost"));
				vo.setOrderAddress((String)params.get("orderAddress"));
				vo.setOrderAddressDetail((String)params.get("orderAddressDetail"));
				vo.setNewuserName((String)params.get("newuser_Name"));
				vo.setNewuserTel((String)params.get("newuser_Tel"));
				System.out.println(orderCode.get(i));
				System.out.println(orderPrice.get(i));
				service.insertorder(vo);
				service.deletecart(vo);
				service.updatesales(vo);
				service.updatestock(vo);
			}
		return api.paymentByImpUid(imp_uid);

	}

	@RequestMapping("/orderssuccess")
	public void orderssuccess() {

	}
}
