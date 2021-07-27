package com.base.mapper;

import com.base.entity.ProductVO;
import com.base.entity.UserVO;

public interface OrdersMapper {

	UserVO getaddr(String userId); 
	ProductVO getproduct(String productCode);
	
	
}
