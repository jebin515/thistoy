package com.base.session;

import lombok.Data;

@Data
public class AuthInfo {
	
	private String userId;
	private String userName;
	
	//로그인성공시 아이디 이름 저장
	public AuthInfo(String userId, String userName) {
        this.userId = userId;
        this.userName = userName;
	}
}
