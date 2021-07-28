package com.base.entity;

import lombok.Data;

@Data
public class CartVO {
	private int cartCode;
	private String productCode;
	private String productEa;
	private String userId;
}
