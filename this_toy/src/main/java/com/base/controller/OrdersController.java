package com.base.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
@RequestMapping("/orders/*")
public class OrdersController {

	private IamportClient api = new IamportClient("9935225488488363",
			"42VKSjQQgdnutTWiJq7BNN0vt2anFEPJGKuz4kplyNP2GLlpcs10f1vJ3G6JkWt1GXALi06QOVTuHeUT");;

	@RequestMapping("/orders")
	public void orders() {

	}

	@ResponseBody
	@RequestMapping(value="/orders/{imp_uid}")
	public IamportResponse<Payment> paymentByImpUid(
			Model model
			, Locale locale
			, HttpSession session
			, @PathVariable(value= "imp_uid") String imp_uid) throws IamportResponseException, IOException
	{	
		System.out.println("값들어온다");
			return api.paymentByImpUid(imp_uid);
	}

	@RequestMapping("/orderssuccess")
	public void orderssuccess() {

	}
}
