package com.base.service.QnA;

import org.springframework.stereotype.Service;

import com.base.entity.QnAVO;
import com.base.mapper.QnAMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class QnAServiceImpl implements QnAService {
	QnAMapper mapper;

	@Override
	public int registerQnA(QnAVO vo) {
		// TODO Auto-generated method stub
		return mapper.insertQnA(vo);
	}

}
