package com.base.entity;

import lombok.Data;

@Data
public class UserDTO {
	
	private String userId; //아이디
	private String userPasswd; //비밀번호
	private boolean useCookie;
	
}
