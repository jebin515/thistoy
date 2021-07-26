package com.base.service.orders;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.OrdersVO;
import com.base.mapper.OrdersMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class OrdersServiceImpl implements OrdersService {
	private OrdersMapper mapper;

	@Override
	public String insert(OrdersVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo);
	}
}
