package com.base.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.base.entity.NoticeCriteria;
import com.base.entity.NoticeVO;

public interface NoticeMapper {

		List<NoticeVO> getList();
		
		void insert(NoticeVO notice);
		
		void insertSelectKey(NoticeVO notice);
		
		NoticeVO read(Long noticeNum);
		
		int delete(Long noticeNum);
		
		int update(NoticeVO notice);
		
		List<NoticeVO> getListwithPaging(NoticeCriteria cri);
}
