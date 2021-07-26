package com.base.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.base.entity.NoticeVO;

public interface NoticeMapper {

		List<NoticeVO> getList();
		
		void insert(NoticeVO notice);
		
		void insertSelectKey(NoticeVO notice);
		
		NoticeVO read(Long notice_num);
		
		int delete(Long notice_num);
}
