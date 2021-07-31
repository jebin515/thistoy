package com.base.service.admin;

import java.util.ArrayList;

import com.base.entity.UserVO;

public interface AdminService {

	void deleteMember(String userId);

	ArrayList<UserVO> userListPaging(int pageNum);

	int getTotal();
}
