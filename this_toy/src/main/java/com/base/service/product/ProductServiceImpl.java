package com.base.service.product;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.DccPageVO;
import com.base.entity.ProductVO;
import com.base.mapper.ProductMapper;

import lombok.AllArgsConstructor;
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService{
	
	private ProductMapper mapper;
	
	@Override
	public int register(ProductVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo);
	}

	@Override
	public ArrayList<ProductVO> getList(DccPageVO vo) {
		// TODO Auto-generated method stub
		return mapper.getList(vo);
	}

	@Override
	public int getTotal(DccPageVO vo) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(vo);
	}

}
