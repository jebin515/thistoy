package com.base.service.user;

import java.util.List;

import org.springframework.stereotype.Service;

import com.base.entity.UserVO;
import com.base.mapper.UserMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service  //controller처럼 동작해서 bean 등록
@Log4j
@RequiredArgsConstructor
public class UserServiceImpl implements UserService{
	
	private final UserMapper mapper;
	
	@Override
	public List<UserVO> login() {
		return null;

	}

	@Override
	public void login2(UserVO uservo) {
		
	}
	
	//회원가입
	@Override
	public void register(UserVO uservo) {
		mapper.register(uservo);
	}

}
