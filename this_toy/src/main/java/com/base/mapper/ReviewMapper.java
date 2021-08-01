package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.ListPageVO;
import com.base.entity.PageVO;
import com.base.entity.ReviewVO;

public interface ReviewMapper {

	int insert(ReviewVO vo);

	ArrayList<ReviewVO> getReview(PageVO vo);

	int getReviewTotalCount(String productCode);
	
	int deleteReview(int reviewCode);
	
	float getReviewAvg(String productCode);
	
	ReviewVO checkReview(ReviewVO vo);

}
