package com.base.service.product;

import java.util.ArrayList;

import com.base.entity.CartVO;
import com.base.entity.DccPageVO;
import com.base.entity.ProductVO;
import com.base.entity.ReviewVO;
import com.base.entity.WishlistVO;

public interface ProductService {

	int register(ProductVO vo);

	ArrayList<ProductVO> getList(DccPageVO vo);

	int getTotal(DccPageVO vo);

	ProductVO getProduct(String productCode);
	
	int removeProduct(String productCode);
	
	int registerCart(CartVO vo);
	
	int cartCount(CartVO vo);
	
	int registerWish(WishlistVO vo);
	
	int wishCount(WishlistVO vo);
	
	int deleteWish(WishlistVO vo);
}
