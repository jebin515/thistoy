package com.base.service.orders;

import org.springframework.stereotype.Service;

import com.base.mapper.OrdersMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class OrdersServiceImpl implements OrdersService {
	private OrdersMapper mapper;
}
