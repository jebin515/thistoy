package com.base.service.Review;

import java.util.ArrayList;

import com.base.entity.PageVO;
import com.base.entity.ReviewVO;

public interface ReviewService {

	int register(ReviewVO vo);
	
	ArrayList<ReviewVO> getReview(PageVO vo);

	int getReviewTotalCount(String productCode);

	int removeReview(int reviewCode);
	
	float getReviewAvg(String productCode);
	
	ReviewVO checkReview(ReviewVO vo);
}
