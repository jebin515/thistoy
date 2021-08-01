package com.base.session;

import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
public class LoginCommand {
	
	@NotEmpty
	private String userId;
	@NotEmpty
	private String userPasswd;
	@NotEmpty
	private String userEmail;
	//비밀번호 수정시 사용할 변수
	@NotEmpty
	private String newPassword;
	@NotEmpty
	private String oldPassword;
}
