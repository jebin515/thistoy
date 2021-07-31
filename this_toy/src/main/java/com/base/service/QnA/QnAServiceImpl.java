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
	public ArrayList<QnAVO> getQnA(QnAVO vo) {
		// TODO Auto-generated method stub
		return mapper.getQnA(vo);
	}

	@Override
	public int QnATotalCount(String productCode) {
		// TODO Auto-generated method stub
		return mapper.QnATotalCount(productCode);
	}

	@Override
	public int replyQnA(QnAVO vo) {
		// TODO Auto-generated method stub
		return mapper.replyQnA(vo);
	}

	@Override
	public int removeReply(int questionCode) {
		// TODO Auto-generated method stub
		return mapper.deleteReply(questionCode);
	}

	@Override
	public int removeQnA(int questionCode) {
		// TODO Auto-generated method stub
		return mapper.deleteQnA(questionCode);
	}

	@Override
	public QnAVO getLastQnA() {
		// TODO Auto-generated method stub
		return mapper.getLastQnA();
	}

}
