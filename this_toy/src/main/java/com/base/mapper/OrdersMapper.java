package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.entity.ProductVO;
import com.base.entity.UserVO;

public interface OrdersMapper {
	
	ArrayList<ProductVO> getproduct(String productCode);
	
	UserVO getaddr(String userId);
	
	OrdersVO insertorder(OrdersVO vo); 
	
	ProductVO getcart(String productCode);
	
	
}
