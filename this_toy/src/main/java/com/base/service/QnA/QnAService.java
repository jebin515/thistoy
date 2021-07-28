package com.base.service.QnA;

import java.util.ArrayList;

import com.base.entity.QnAVO;

public interface QnAService {

	int registerQnA(QnAVO vo);
	
	ArrayList<QnAVO> getQnA(String productCode);
	
	int QnATotalCount(String productCode);
}
