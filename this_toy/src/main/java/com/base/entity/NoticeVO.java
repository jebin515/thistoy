package com.base.entity;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	private Long noticeNum; //공지사항 번호
	private String noticeTitle; //글제목
	private Date noticeDate; //작성날짜
	private String noticeText; //내용
	private int noticeView; //조회수
	private String userId; //아이디
	private int num;
}
