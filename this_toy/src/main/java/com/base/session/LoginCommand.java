package com.base.session;

import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
public class LoginCommand {
	
	@NotEmpty
	private String userId;
	@NotEmpty
	private String userPasswd;
}
