package com.base.service.user;

import java.util.List;


import com.base.entity.UserVO;

public interface UserService {
	//로그인
	UserVO login(UserVO userVO);
	
	int loginCheck(UserVO userVO);
	
	
	//회원가입
	void register(UserVO userVO);
	
	//id체크
	int idCheck(UserVO userVO);
	
}
