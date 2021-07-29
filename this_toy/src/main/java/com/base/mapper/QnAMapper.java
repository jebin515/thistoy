package com.base.mapper;

import java.util.ArrayList;

import com.base.entity.QnAVO;

public interface QnAMapper {
	
	int insertQnA(QnAVO vo);
	
	ArrayList<QnAVO> getQnA(String productCode);
	
	int QnATotalCount(String productCode);
}
