package com.base.service.orders;

import com.base.entity.ProductVO;
import com.base.entity.UserVO;

public interface OrdersService {
	
	ProductVO getproduct(String productCode);
	UserVO getaddr(String userId); 
}
