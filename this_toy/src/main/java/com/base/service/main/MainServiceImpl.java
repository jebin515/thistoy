package com.base.service.main;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.entity.ProductVO;
import com.base.mapper.MainMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MainServiceImpl implements MainService{
	
	private MainMapper mapper;
	
	@Override
	public ArrayList<ProductVO> searchList(String search) {
		// TODO Auto-generated method stub
		return mapper.searchList(search);
	}
	
//	public ArrayList<ProductVO> bestList(){
//		// TODO Auto-generated method stub
//		return mapper.bestList();
//	}
//	
//	public ArrayList<ProductVO> newList(){
//		// TODO Auto-generated method stub
//		return mapper.newList();
//	}

}
