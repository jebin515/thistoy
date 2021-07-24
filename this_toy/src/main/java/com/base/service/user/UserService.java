package com.base.service.user;

import java.util.List;


import com.base.entity.UserVO;

public interface UserService {
	//로그인
	UserVO login(UserVO uservo);
	
	void login2(UserVO uservo);
	
	
	//회원가입
	void register(UserVO uservo);
	
	//id체크
	int idCheck(UserVO uservo);
	
}
