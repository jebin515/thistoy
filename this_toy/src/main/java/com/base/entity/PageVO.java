package com.base.entity;

import lombok.Data;

@Data
public class PageVO {
	
	private String productCode;
	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int realEnd;
	
	private int total;
	private int pageNum;
	public PageVO(int total, int pageNum) {
		this.total = total;
		this.pageNum = pageNum;
		this.endPage = (int) (Math.ceil(pageNum/5.0))*5;
		this.startPage = this.endPage-4;
		realEnd = (int) (Math.ceil((total*1.0)/10));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage>1;
		this.next = this.endPage<realEnd;
	}
	public PageVO() {
	}
}
