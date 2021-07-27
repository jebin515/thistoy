package com.base.service.notice;

import org.springframework.stereotype.Service;

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
}
