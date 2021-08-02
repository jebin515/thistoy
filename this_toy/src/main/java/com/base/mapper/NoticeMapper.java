package com.base.mapper;

import java.util.List;
import java.util.Map;

import com.base.entity.NoticeVO;
import com.base.entity.SearchVO;

public interface NoticeMapper {

		
		int insert(NoticeVO notice);
		
		NoticeVO read(Long noticeNum);
		
		int delete(Long noticeNum);
		
		int update(NoticeVO notice);
		
		List<NoticeVO> getListwithPaging(SearchVO vo);
		
		int getTotalCount(SearchVO vo);
		
		List<NoticeVO> searchTest(Map<String, Map<String,String>> map);
}
