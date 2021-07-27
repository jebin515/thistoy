package com.base.service.orders;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.CartVO;
import com.base.entity.ProductVO;
import com.base.entity.UserVO;
import com.base.mapper.OrdersMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class OrdersServiceImpl implements OrdersService {
	private OrdersMapper mapper;

	@Override
	public ArrayList<ProductVO> getproduct(String productCode) {
		
		return mapper.getproduct(productCode);
	}
	@Override
	public UserVO getaddr(String userId) {
		// TODO Auto-generated method stub
		return mapper.getaddr(userId);
	}
	
	@Override
	public CartVO getcart(CartVO vo) {
		// TODO Auto-generated method stub
		return mapper.getcart(vo);
	}
	
}
