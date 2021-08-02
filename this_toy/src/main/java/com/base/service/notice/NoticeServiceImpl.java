package com.base.service.notice;

import java.util.List;

import org.springframework.stereotype.Service;

import com.base.entity.NoticeVO;
import com.base.entity.SearchVO;
import com.base.mapper.NoticeMapper;

import lombok.RequiredArgsConstructor;
import lombok.ToString;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
@ToString
public class NoticeServiceImpl implements NoticeService{

	private final NoticeMapper mapper;

	@Override
	public int register(NoticeVO notice) {
		return mapper.insert(notice);
	}

	@Override
	public NoticeVO get(Long noticeNum) {
		
		return mapper.read(noticeNum);
	}

	@Override
	public int modify(NoticeVO notice) {
		return mapper.update(notice);
	}

	@Override
	public int remove(Long noticeNum) {
	
		return mapper.delete(noticeNum);
	}


	@Override
	public int getTotal(SearchVO vo) {
		return mapper.getTotalCount(vo);
	}

	@Override
	public List<NoticeVO> getListwithPaging(SearchVO vo) {
		// TODO Auto-generated method stub
		return mapper.getListwithPaging(vo);
	}

}
