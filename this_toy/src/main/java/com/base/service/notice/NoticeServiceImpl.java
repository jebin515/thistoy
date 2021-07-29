package com.base.service.notice;

import java.util.List;

import org.springframework.stereotype.Service;

import com.base.entity.NoticeCriteria;
import com.base.entity.NoticeVO;
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
	public Long register(NoticeVO notice) {
		
		mapper.insertSelectKey(notice);
		
		return notice.getNoticeNum();
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
	public List<NoticeVO> getList() {

		return mapper.getList();
	}

	@Override
	public List<NoticeVO> getList(NoticeCriteria cri) {
		return mapper.getListwithPaging(cri);
	}

	@Override
	public int getTotal(NoticeCriteria cri) {
		return mapper.getTotalCount(cri);
	}
}
