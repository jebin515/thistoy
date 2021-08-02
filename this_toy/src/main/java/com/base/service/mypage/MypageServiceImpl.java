package com.base.service.mypage;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.entity.ProductVO;
import com.base.entity.QnAVO;
import com.base.entity.ReviewVO;
import com.base.entity.UserVO;
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
	public ProductVO getCart(String productCode) {
		// TODO Auto-generated method stub
		return mapper.getCart(productCode);
	}
	@Override
	public ArrayList<CartVO> getProductCode3(String userId) {
		// TODO Auto-generated method stub
		return mapper.getProductCode3(userId);
	}
	@Override
	public ArrayList<WishlistVO> getWish(String productCode) {
		// TODO Auto-generated method stub
		return mapper.getWish(productCode);
	}
	@Override
	public ArrayList<OrdersVO> getOrderList(String userId) {
		// TODO Auto-generated method stub
		return mapper.getOrderList(userId);
	}
	@Override
	public OrdersVO getProduct(OrdersVO vo) {
		// TODO Auto-generated method stub
		return mapper.getProduct(vo);
	}
	@Override
	public OrdersVO getOrder(String orderCode) {
		// TODO Auto-generated method stub
		return mapper.getOrder(orderCode);
	}
	@Override
	public ProductVO getProduct2(String productCode) {
		// TODO Auto-generated method stub
		return mapper.getProduct2(productCode);
	}
	@Override
	public UserVO getUser(String userId) {
		// TODO Auto-generated method stub
		return mapper.getUser(userId);
	}
	@Override
	public UserVO getSeller(String seller) {
		// TODO Auto-generated method stub
		return mapper.getSeller(seller);
	}
	@Override
	public ArrayList<ReviewVO> getReviewList(String userId) {
		// TODO Auto-generated method stub
		return mapper.getReviewList(userId);
	}
	@Override
	public ArrayList<QnAVO> getQnaList(String userId) {
		// TODO Auto-generated method stub
		return mapper.getQnaList(userId);
	}
	@Override
	public int orderdelete(String orderCode) {
		// TODO Auto-generated method stub
		return mapper.orderdelete(orderCode);
	}
	@Override
	public int deleteCart(CartVO vo) {
		// TODO Auto-generated method stub
		return mapper.deleteCart(vo);
	}
	@Override
	public int alldeleteCart(String userId) {
		// TODO Auto-generated method stub
		return mapper.alldeleteCart(userId);
	}
	@Override
	public int deleteWish(WishlistVO vo) {
		// TODO Auto-generated method stub
		return mapper.deleteWish(vo);
	}
}
