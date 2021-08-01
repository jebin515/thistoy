package com.base.session;

import lombok.Data;

@Data
public class AuthInfo {

	private String userId;
	private String userName;
	private String userEmail;
	private String userTel;
	private String userAddressPost;
	private String userAddress;
	private String userAddressDetail;

	// 로그인성공시 정보 저장
	public AuthInfo(String userId) {
		this.userId = userId;

	}
}
