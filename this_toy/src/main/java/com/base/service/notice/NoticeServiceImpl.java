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
	public List<NoticeVO> getListwithPagingSearch(SearchVO vo) {
		// TODO Auto-generated method stub
		return mapper.getListwithPagingSearch(vo);
	}

	@Override
	public int getSearchTotalCount(SearchVO vo) {
		// TODO Auto-generated method stub
		return mapper.getSearchTotalCount(vo);
	}

}
