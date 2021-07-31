package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.CartVO;
import com.base.entity.DccPageVO;
import com.base.entity.ProductVO;
import com.base.entity.ReviewVO;
import com.base.entity.WishlistVO;

public interface ProductMapper {

	int insert(ProductVO vo); //판매글 등록
	
	ArrayList<ProductVO> getList(DccPageVO vo); // 페이지와 카테고리에 알맞은 상품들을 출력.
	
	int getTotalCount(DccPageVO vo); //카테고리에 대한 총 상품 등록 수 리턴.
	
	ProductVO getProduct(String productCode);
	
	int deleteProduct(String productCode);
	
	int insertCart(CartVO vo);
	
	int cartCount(CartVO vo);
	
	int insertWish(WishlistVO vo);
	
	int wishCount(WishlistVO vo);
	
	int deleteWish(WishlistVO vo);
	
}
