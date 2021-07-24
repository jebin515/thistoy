package com.base.entity;

import lombok.Data;

@Data
public class UserVO {
	
	private String userId; //아이디
	private String userPasswd; //비밀번호
	private String userName; //이름
	private String userEmail; //이메일
	private String userTel; //전화번호
	private String userAddress; //주소
	private String userCode; //코드
	private String userImg; //이미지
}
