package com.base.entity;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	private String productCode; //상품코드
	private String productName; //상품이름
	private String productPrice; //상품가격
	private String productMainImg; //상품메인이미지
	private String productText; //상품텍스트
	private int productStock; // 상품재고
	private String downCaCode; //하위카테고리번호
	private String userId; //아이디
	private int sellCount; //판매량
	private String productInfoImg; //상품설명이미지
	private Date productDate; //상품등록날짜
	private String downCaName;
	private int productEa;
	private float ratingAvg;
}
