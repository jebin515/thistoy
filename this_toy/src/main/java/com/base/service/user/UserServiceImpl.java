package com.base.service.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.base.entity.UserVO;
import com.base.mapper.UserMapper;
import com.base.session.AuthInfo;
import com.base.session.IdPasswordNotMatchingException;
import com.base.session.LoginCommand;

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

	@Override
    public AuthInfo loginAuth(LoginCommand loginCommand) {
        UserVO user = userMapper.selectById(loginCommand.getUserId());
        if(user == null) {
            throw new IdPasswordNotMatchingException();
        }
        if(!user.matchPassword(loginCommand.getUserPasswd())) {
            throw new IdPasswordNotMatchingException();
        }
        return new AuthInfo(user.getUserId(), user.getUserName());
    }
	//boolean 로그인
//	@Override
//	public boolean loginCheck2(UserVO userVO, HttpSession session) {
//		boolean result = userMapper.loginCheck2(userVO);
//		if(result) {
//			UserVO userVO2 = viewUser(userVO);
//			session.setAttribute("userId", userVO2.getUserId());
//			session.setAttribute("userName", userVO2.getUserName());
//		}
//		return result;
//	}


//	@Override
//	public boolean loginCheck2(UserVO userVO, HttpSession session) {
//		boolean result = userMapper.loginCheck2(userVO);
//		if(result) {
//		UserVO userVO2 = viewUser(userVO);
//		session.setAttribute("userId", userVO2.getUserId());
//		session.setAttribute("userName", userVO2.getUserName());
//		}
//	return result;
//	}
//	@Override
//	public UserVO viewUser(UserVO userVO) {
//		return userMapper.viewUser(userVO);
//	}


}
