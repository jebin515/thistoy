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
	private String orderAddress;//주소
}
