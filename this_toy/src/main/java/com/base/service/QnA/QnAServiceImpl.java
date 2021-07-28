package com.base.service.QnA;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.QnAVO;
import com.base.mapper.QnAMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class QnAServiceImpl implements QnAService {
	private QnAMapper mapper;

	@Override
	public int registerQnA(QnAVO vo) {
		// TODO Auto-generated method stub
		return mapper.insertQnA(vo);
	}

	@Override
	public ArrayList<QnAVO> getQnA(String productCode) {
		// TODO Auto-generated method stub
		return mapper.getQnA(productCode);
	}

	@Override
	public int QnATotalCount(String productCode) {
		// TODO Auto-generated method stub
		return mapper.QnATotalCount(productCode);
	}

}
