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
	//로그인성공시 정보 저장
	public AuthInfo(String userId, String userName
			,String userEmail,String userTel
			,String userAddressPost,String userAddress,String userAddressDetail) {
        this.userId = userId;
        this.userName = userName;
        
        this.userEmail = userEmail;
        this.userTel = userTel;
        this.userAddressPost = userAddressPost;
        this.userAddress = userAddress;
        this.userAddressDetail = userAddressDetail;
        
	}
}
