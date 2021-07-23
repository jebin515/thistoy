package com.base.entity;

import java.util.Date;

import lombok.Data;

@Data
public class OrdersVO {
	private String orderCode;
	private int orderPrice;
	private String productCode;
	private Date orderDate;
	private int orderEa;
	private String productImg;
	private String orderAddress;
	private String orderSituation;
}
