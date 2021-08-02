package com.base.entity;

import java.util.Date;

import lombok.Data;

@Data
public class OrdersVO {
	private String orderCode; //주문번호
	private String productName; //상품이름
	private int orderPrice; //가격
	private String productCode; //상품코드
	private Date orderDate;//주문시간
	private int orderEa;//주문갯수
	private String productImg;//상품이미지
	private String orderSituation;//주문현황
	private String orderAddressPost;//주소
	private String orderAddress;
	private String orderAddressDetail;
	private String userId;
	private String userTel;
	private String newuserName;
	private String newuserTel;

	private int productStock; // 상품재고
	private int sellCount; //판매량
	

  }
