package com.base.service.admin;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.UserVO;
import com.base.mapper.AdminMapper;

import lombok.AllArgsConstructor;

@Service

@AllArgsConstructor
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;

	@Override
	public ArrayList<UserVO> admin() {
		// TODO Auto-generated method stub
		return mapper.admin();
	}

	@Override
	public String deleteMember(String userId) {
		// TODO Auto-generated method stub
		return mapper.deleteMember(userId);
	}

}
