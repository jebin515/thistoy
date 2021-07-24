package com.base.service.user;

import java.util.List;


import com.base.entity.UserVO;

public interface UserService {
	//로그인
	void login2(UserVO uservo);
	
	List<UserVO> login();
	
	//회원가입
	void register(UserVO uservo);
}
