package com.base.service.notice;

import java.util.List;

import com.base.entity.NoticeVO;
import com.base.entity.SearchVO;

public interface NoticeService {

	int register(NoticeVO notice);	//등록처리
	
	NoticeVO get(Long noticeNum);
	
	int modify(NoticeVO notice);
	
	int remove(Long noticeNum);
	
	
	int getSearchTotalCount(SearchVO vo);
	
	List<NoticeVO> getListwithPagingSearch(SearchVO vo);
	

}
