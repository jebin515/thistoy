package com.base.service.mypage;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.entity.ProductVO;
import com.base.entity.WishlistVO;
import com.base.mapper.MypageMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MypageServiceImpl implements MypageService{
	private MypageMapper mapper;
	@Override
	public ArrayList<WishlistVO> getProductCode(String userId) {
		// TODO Auto-generated method stub
		return mapper.getProductCode(userId);
	}
	@Override
	public ProductVO getWishList(String productCode) {
		// TODO Auto-generated method stub
		return mapper.getWishList(productCode);
	}
	@Override
	public ArrayList<ProductVO> getSellbox(String userId) {
		return mapper.getSellbox(userId);
	}
	
	@Override
	public OrdersVO getOrder(String orderCode) {
		// TODO Auto-generated method stub
		return mapper.getOrder(orderCode);
	}
	
	@Override
	public ProductVO getCart(String productCode) {
		// TODO Auto-generated method stub
		return mapper.getCart(productCode);
	}
	@Override
	public ArrayList<CartVO> getProductCode3(String userId) {
		// TODO Auto-generated method stub
		return mapper.getProductCode3(userId);
	}
	
}
