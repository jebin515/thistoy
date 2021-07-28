package com.base.mapper;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.base.entity.UserVO;

public interface UserMapper{
	
	// 로그인
	UserVO login(UserVO userVO);
	
	
	boolean loginCheck2(UserVO userVO);
	UserVO viewUser(UserVO userVO);
	
	
	int loginCheck(UserVO userVO);
	
	//회원가입
	void register(UserVO userVO);
	
	//아이디 중복체크
	int idCheck(UserVO userVO);
	
	//현재사용 로그인  매퍼
	public UserVO selectById(String UserId);
	
}
