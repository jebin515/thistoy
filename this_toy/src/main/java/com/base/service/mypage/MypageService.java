package com.base.service.mypage;

import java.util.ArrayList;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.entity.ProductVO;
import com.base.entity.QnAVO;
import com.base.entity.ReviewVO;
import com.base.entity.UserVO;
import com.base.entity.WishlistVO;

public interface MypageService {

	ArrayList<WishlistVO> getProductCode(String userId);

	ProductVO getWishList(String productCode);

	ArrayList<ProductVO> getSellbox(String userId);

	ArrayList<CartVO> getProductCode3(String userId);

	ProductVO getCart(String productCode);

	ArrayList<WishlistVO> getWish(String productCode);

	ArrayList<OrdersVO> getOrderList(String userId);

	OrdersVO getProduct(OrdersVO vo);

	OrdersVO getOrder(String orderCode);

	ProductVO getProduct2(String productCode);
	
	UserVO getUser(String userId);
	
	UserVO getSeller(String seller);
	
	ArrayList<ReviewVO> getReviewList(String userId);
	
	ArrayList<QnAVO> getQnaList(String userId);
	
	int orderdelete(String orderCode);
	
	int deleteCart(CartVO vo);
	
	int alldeleteCart(String userId);
	
	int deleteWish(WishlistVO vo);

}
