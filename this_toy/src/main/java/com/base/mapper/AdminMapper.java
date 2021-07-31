package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.UserVO;

public interface AdminMapper {

	void deleteMember(String userId);

	ArrayList<UserVO> userListPaging(int pageNum);

	int getTotal();

}
