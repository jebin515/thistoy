package com.base.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.base.entity.NoticeVO;

public interface NoticeMapper {

		@Select("select * from notice where notice_num > 0")
		List<NoticeVO> getList();
}
