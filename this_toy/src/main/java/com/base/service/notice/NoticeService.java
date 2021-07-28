package com.base.service.notice;

import java.util.List;

import com.base.entity.NoticeCriteria;
import com.base.entity.NoticeVO;

public interface NoticeService {

	Long register(NoticeVO notice);
	
	NoticeVO get(Long noticeNum);
	
	int modify(NoticeVO notice);
	
	int remove(Long noticeNum);
	
	List<NoticeVO> getList();
	
	List<NoticeVO> getList(NoticeCriteria cri);
}
