package com.base.entity;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {

	private String userId; // 아이디
	private String userPasswd; // 비밀번호
	private String userName; // 이름
	private String userEmail; // 이메일
	private String userTel; // 전화번호
	private String userAddressPost; // 우편번호
	private String userAddress; // 기본주소
	private String userAddressDetail; // 상세주소
	private String userCode; // 코드
	private String userImg; // 이미지
	private Date userDate; // 생성날짜
	private String userSocial;
	// /* private boolean useCookie; */
	// 정보수정시 필요한 값
	private String newPassword;
	private String oldPassword;

	// 비밀번호체크
	public boolean matchPassword(String pw) {
		return this.userPasswd.equals(pw);
	}

}
