package com.base.entity;

import java.util.Date;

import lombok.Data;

@Data
public class QnAVO {
	
	private int questionCode;
	private String productCode;
	private String questionText;
	private Date questionDate;
	private String replySituation;
	private String userId;
}
