package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.OrdersVO;
import com.base.entity.UserVO;

public interface AdminMapper {

	void deleteMember(String userId);

	void updateMember(OrdersVO vo);
	
	ArrayList<UserVO> userListPaging(int pageNum);
	
	ArrayList<OrdersVO> orderListPaging(int pageNum);

	int getTotal();

}
