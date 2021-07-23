package com.base.service.main;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.entity.ProductVO;
import com.base.mapper.MainMapper;

import lombok.AllArgsConstructor;
//mapper로 값을 보내줌
@Service
@AllArgsConstructor
public class MainServiceImpl implements MainService{
	
	private MainMapper mapper;
	
	@Override
	public ArrayList<ProductVO> searchList(String search) {
		// TODO Auto-generated method stub
		return mapper.searchList(search);
	}

}
