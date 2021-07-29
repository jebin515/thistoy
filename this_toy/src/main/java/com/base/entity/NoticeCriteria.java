package com.base.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeCriteria {

	private int pageNum; //페이징
	private int amount;
	
	private String type; //검색
	private String keyword;
	
	public NoticeCriteria() { //페이징
		this(1,10);
	}

	public NoticeCriteria(int pageNum, int amount) { //페이징
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}
	public String[] getTypeArr() {
		
		//System.out.println("==========================");
		//System.out.println("getTypeArr............................."); //호출확인
		
		return type == null? new String[] { }: type.split("");
	}
}
