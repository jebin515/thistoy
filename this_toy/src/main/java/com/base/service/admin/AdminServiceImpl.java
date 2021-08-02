package com.base.service.admin;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.OrdersVO;
import com.base.entity.UserVO;
import com.base.mapper.AdminMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;

	@Override
	public void deleteMember(String userId) {
		// TODO Auto-generated method stub
		mapper.deleteMember(userId);
	}

	@Override
	public ArrayList<UserVO> userListPaging(int pageNum) {
		// TODO Auto-generated method stub
		return mapper.userListPaging(pageNum);
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return mapper.getTotal();
	}
	
	@Override
	public ArrayList<OrdersVO> orderListPaging(int pageNum) {
		// TODO Auto-generated method stub
		return mapper.orderListPaging(pageNum);
	}
	
	@Override
	public void updateMember(OrdersVO vo) {
		
		mapper.updateMember(vo);
	}

}
