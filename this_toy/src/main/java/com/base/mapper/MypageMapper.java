package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.ProductVO;
import com.base.entity.WishlistVO;

public interface MypageMapper {
	
	ArrayList<WishlistVO> getProductCode(String userId);
	
	ProductVO getWishList(String productCode);
}
