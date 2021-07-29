package com.base.service.QnA;

import java.util.ArrayList;

import com.base.entity.QnAVO;

public interface QnAService {

	int registerQnA(QnAVO vo);
	
	ArrayList<QnAVO> getQnA(QnAVO vo);
	
	int QnATotalCount(String productCode);
}
