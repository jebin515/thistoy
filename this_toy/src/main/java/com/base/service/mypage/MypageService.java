package com.base.service.mypage;

import java.util.ArrayList;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.entity.ProductVO;
import com.base.entity.WishlistVO;

public interface MypageService {

	ArrayList<WishlistVO> getProductCode(String userId);
	ProductVO getWishList(String productCode);
	
	ArrayList<ProductVO> getSellbox(String userId);
	
	ArrayList<CartVO> getProductCode3(String userId);
	ProductVO getCart(String productCode);
	
	ArrayList<WishlistVO> getWish(String productCode);
	
	
	
}
