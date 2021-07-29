package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.QnAVO;

public interface QnAMapper {
	
	int insertQnA(QnAVO vo);
	
	ArrayList<QnAVO> getQnA(QnAVO vo);
	
	int QnATotalCount(String productCode);
}
