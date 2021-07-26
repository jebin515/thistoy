package com.base.service.Review;

import org.springframework.stereotype.Service;

import com.base.entity.ReviewVO;
import com.base.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
@Service
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {

	private ReviewMapper mapper;
	@Override
	public int register(ReviewVO vo) {
		
		return mapper.insert(vo);
	}

}
