package com.base.service.product;

import java.util.ArrayList;

import com.base.entity.ProductVO;

public interface ProductService {

	int register(ProductVO vo);
	
	ArrayList<ProductVO> getList(String downCaCode);
}
