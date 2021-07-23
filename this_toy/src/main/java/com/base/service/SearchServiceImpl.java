package com.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.mapper.SearchMapper;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	SearchMapper searchMapper;
}
