package com.base.service.product;

import java.util.ArrayList;

import com.base.entity.DccPageVO;
import com.base.entity.ProductVO;

public interface ProductService {

	int register(ProductVO vo);

	ArrayList<ProductVO> getList(DccPageVO vo);

	int getTotal(DccPageVO vo);

}
