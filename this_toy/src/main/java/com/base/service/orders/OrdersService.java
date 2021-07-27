package com.base.service.orders;

import java.util.ArrayList;

import com.base.entity.CartVO;
import com.base.entity.ProductVO;
import com.base.entity.UserVO;

public interface OrdersService {
	
	ArrayList<ProductVO> getproduct(String productCode);
	CartVO getcart(CartVO vo);
	UserVO getaddr(String userId); 
}
