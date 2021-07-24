package com.base.service.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.base.entity.UserVO;
import com.base.mapper.UserMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service  //controller처럼 동작해서 bean 등록
@Log4j
@RequiredArgsConstructor
public class UserServiceImpl implements UserService{
	
	private final UserMapper userMapper;
	
	
	@Override
	public UserVO login(UserVO userVO) {
		
		return userMapper.login(userVO);
	}
	
	//회원가입
	@Override
	public void register(UserVO userVO){
		userMapper.register(userVO);
	}
	@Override
	public int idCheck(UserVO userVO) {
		int result = userMapper.idCheck(userVO);
		return result;
	}

	@Override
	public int loginCheck(UserVO userVO) {
		int result = userMapper.loginCheck(userVO);
		return result;
	}


}
