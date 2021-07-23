package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.ProductVO;

public interface ProductMapper {

	int insert(ProductVO vo);
	
	ArrayList<ProductVO> getList(String downCaCode);
}
