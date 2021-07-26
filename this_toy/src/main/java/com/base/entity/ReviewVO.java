package com.base.entity;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int reviewCode;
	private String productCode;
	private String reviewImg;
	private String reviewText;
	private int reviewRating;
	private Date reviewDate;
	private String userId;
	
	
}
