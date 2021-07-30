package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.entity.ProductVO;
import com.base.entity.WishlistVO;

public interface MypageMapper {

	ArrayList<WishlistVO> getProductCode(String userId);
	ProductVO getWishList(String productCode);

	ArrayList<ProductVO> getSellbox(String userId);
	
	OrdersVO getOrder(String orderCode);

	ArrayList<CartVO> getProductCode3(String userId);
	ProductVO getCart(String productCode);
	
	
}
	
