package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.ProductVO;

public interface MainMapper {
	
	ArrayList<ProductVO> bestList();
	
	ArrayList<ProductVO> newList();
}
