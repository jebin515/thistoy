package com.base.mapper;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.base.entity.UserVO;
import com.base.session.LoginCommand;

public interface UserMapper{
	
	// 로그인
	UserVO login(UserVO userVO);
	
	
	//회원가입
	void register(UserVO userVO);
	
	//가입시 아이디 중복체크
	int idCheck(UserVO userVO);
	//가입시 이메일체크
	int emailCheck(UserVO userVO);
	//현재사용 로그인  매퍼
	public UserVO selectById(String UserId);
	//개인정보 수정
	public void userModify(UserVO vo);
	//정보수정시 현재비밀번호체크
	public UserVO pwCheck(String UserPasswd);
	
	//zzk
	void insertKakaoId(UserVO vo);
	
	UserVO getmodify(String userId);
	
	public UserVO findpw(String UserPasswd);
	
	int loginCheck(UserVO userVO);
	
	
	public UserVO readUser(String userid) throws Exception;
	
	
}
