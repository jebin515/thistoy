package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.UserVO;

public interface AdminMapper {

	ArrayList<UserVO> admin();

	String deleteMember(String userId);

}
