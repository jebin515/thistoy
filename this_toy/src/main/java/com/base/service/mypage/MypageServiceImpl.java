package com.base.service.mypage;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

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

}
