package com.base.service.user;

import org.springframework.stereotype.Service;

import com.base.entity.UserVO;
import com.base.mapper.UserMapper;
import com.base.session.AuthInfo;
import com.base.session.IdPasswordNotMatchingException;
import com.base.session.LoginCommand;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service // controller처럼 동작해서 bean 등록
@Log4j
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

	private final UserMapper userMapper;

//	@Override
//	public UserVO login(UserVO userVO) {
//		System.out.println("서비스VO : "+userVO);
//		return userMapper.login(userVO);
//	}

	// 회원가입
	@Override
	public void register(UserVO userVO) {
		userMapper.register(userVO);
	}

	// 회원가입시 id중복확인
	@Override
	public int idCheck(UserVO userVO) {
		int result = userMapper.idCheck(userVO);
		return result;
	}
	// 회원가입시 메일중복확인
		@Override
		public int emailCheck(UserVO userVO) {
			int result = userMapper.emailCheck(userVO);
			return result;
		}
		
	@Override
	public AuthInfo loginAuth(LoginCommand loginCommand) {
		UserVO user = userMapper.selectById(loginCommand.getUserId());
		System.out.println("서비스유저" + user);
		if (user == null) {
			throw new IdPasswordNotMatchingException();
		}
		if (!user.matchPassword(loginCommand.getUserPasswd())) {
			throw new IdPasswordNotMatchingException();
		}
		return new AuthInfo(user.getUserId()
				);
	}

	// 개인정보수정
	@Override
	public void userModify(UserVO vo) {
		userMapper.userModify(vo);

		String pw = vo.getUserPasswd();
		String mail = vo.getUserEmail();
	}

	// 개인정보 수정 비밀번호 체크
	@Override
	public AuthInfo pwCheck(LoginCommand loginCommand) {

		UserVO user = userMapper.pwCheck(loginCommand.getUserId());

		if (user == null) {
			System.out.println("수정비번없음");

			throw new IdPasswordNotMatchingException();
		}
		if (!user.matchPassword(loginCommand.getOldPassword())) {
			System.out.println("수정비번틀림");
			throw new IdPasswordNotMatchingException();
		}
		// 기본
//      return new AuthInfo(user.getUserId(), user.getUserName());
		// 유저수정 페이지 위해서 다른 정보들도 넣음
		return new AuthInfo(user.getUserId());
	}
	
	
	
	@Override
	public UserVO getmodify(String userId) {
		
		return userMapper.getmodify(userId);
	}
	
	
}
