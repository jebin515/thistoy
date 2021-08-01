package com.base.service.product;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.CartVO;
import com.base.entity.DccPageVO;
import com.base.entity.ProductVO;
import com.base.entity.ReviewVO;
import com.base.entity.WishlistVO;
import com.base.mapper.ProductMapper;

import lombok.AllArgsConstructor;
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService{
	
	private ProductMapper mapper;
	
	@Override
	public int register(ProductVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo);
	}

	@Override
	public ArrayList<ProductVO> getList(DccPageVO vo) {
		// TODO Auto-generated method stub
		return mapper.getList(vo);
	}

	@Override
	public int getTotal(DccPageVO vo) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(vo);
	}

	@Override
	public ProductVO getProduct(String productCode) {
		// TODO Auto-generated method stub
		return mapper.getProduct(productCode);
	}


	@Override
	public int registerCart(CartVO vo) {
		// TODO Auto-generated method stub
		return mapper.insertCart(vo);
	}

	@Override
	public int cartCount(CartVO vo) {
		// TODO Auto-generated method stub
		return mapper.cartCount(vo);
	}

	@Override
	public int registerWish(WishlistVO vo) {
		// TODO Auto-generated method stub
		return mapper.insertWish(vo);
	}

	@Override
	public int wishCount(WishlistVO vo) {
		// TODO Auto-generated method stub
		return mapper.wishCount(vo);
	}

	@Override
	public int deleteWish(WishlistVO vo) {
		// TODO Auto-generated method stub
		return mapper.deleteWish(vo);
	}

	@Override
	public int removeProduct(String productCode) {
		// TODO Auto-generated method stub
		return mapper.deleteProduct(productCode);
	}

}
