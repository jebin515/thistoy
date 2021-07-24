package com.base.service.main;

import java.util.ArrayList;

import com.base.entity.ProductVO;

public interface MainService {
	
	ArrayList<ProductVO> bestList();
	
	ArrayList<ProductVO> newList();
}
