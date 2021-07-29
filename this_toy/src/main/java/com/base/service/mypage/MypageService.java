package com.base.service.mypage;

import java.util.ArrayList;

import com.base.entity.ProductVO;
import com.base.entity.WishlistVO;

public interface MypageService {

	ArrayList<WishlistVO> getProductCode(String userId);
	
	ProductVO getWishList(String productCode);
}
