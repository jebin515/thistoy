package com.base.entity;

import lombok.Data;

@Data
public class DccPageVO {

	private String downCaCode; //하위카테고리
	private int pageNum; //페이지번호
	private String search; //검색어
	private String bn; //best,new
}
