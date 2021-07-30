package com.base.service.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.base.entity.UserVO;
import com.base.session.AuthInfo;
import com.base.session.LoginCommand;

public interface UserService {
	//로그인
	UserVO login(UserVO userVO);
	//회원가입
	void register(UserVO userVO);
	
	//id체크
	int idCheck(UserVO userVO);
	
	//로그인
	AuthInfo loginAuth(LoginCommand loginCommand);
	
	//개인정보수정
	public void userModify(UserVO vo);
	//수정시 비밀번호체크
	AuthInfo pwCheck(LoginCommand loginCommand);
}
