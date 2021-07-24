package com.base.mapper;

import java.util.List;


import com.base.entity.UserVO;

public interface UserMapper {
	
	// 로그인
	UserVO login(UserVO userVO);
	
	int loginCheck(UserVO userVO);
	
	//회원가입
	void register(UserVO userVO);
	
	//아이디 중복체크
	int idCheck(UserVO userVO);
}
