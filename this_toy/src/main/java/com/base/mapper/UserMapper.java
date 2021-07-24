package com.base.mapper;

import java.util.List;


import com.base.entity.UserVO;

public interface UserMapper {
	
	// 유저테이블 내용 가져오기
	List<UserVO> login();
	
	void login2(UserVO uservo);
	
	void register(UserVO uservo);
}
