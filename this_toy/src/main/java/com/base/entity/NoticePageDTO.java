package com.base.entity;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class NoticePageDTO {  

	private int startPage, endPage;
	private boolean prev, next;
	
	private int total;
	private NoticeCriteria cri;
	
	public NoticePageDTO(NoticeCriteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int) (Math.ceil(cri.getPageNum()/10.0) * 10);
		this.startPage = endPage - 9;
		
		this.prev = this.startPage > 1;
		
		int realEnd = (int) (Math.ceil ((total * 1.0) / cri.getAmount()) );
		
		this.endPage = realEnd <= endPage? realEnd : endPage;
		
		this.next = this.endPage < realEnd;
	}
}
