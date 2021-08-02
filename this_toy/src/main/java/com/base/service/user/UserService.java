package com.base.service.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.base.entity.UserVO;
import com.base.session.AuthInfo;
import com.base.session.LoginCommand;

public interface UserService {
	
//	UserVO login(UserVO userVO);
	//회원가입
	void register(UserVO userVO);
	
	//회원가입시 id 중복확인
	int idCheck(UserVO userVO);
	//가입시 이메일 중복확인
	int emailCheck(UserVO userVO);
	
	//로그인
	AuthInfo loginAuth(LoginCommand loginCommand);
	
	UserVO getmodify(String userId);
	
	//개인정보수정
	public void userModify(UserVO vo);
	//수정시 비밀번호체크
	AuthInfo pwCheck(LoginCommand loginCommand);
	
	public int selectSocialLogin(UserVO vo);
	
	public int insertSocialLogin(UserVO vo);
	
	int passwdUpdate(UserVO vo);
	
	int deleteUser(String userId);
	
}
