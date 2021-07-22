package com.base.service.category;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.DownCategoryVO;
import com.base.mapper.CategoryMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {
	private CategoryMapper mapper;
	@Override
	public ArrayList<DownCategoryVO> getList() {
		// TODO Auto-generated method stub
		return mapper.select();
	}
	@Override
	public DownCategoryVO getDcName(String downCaCode) {
		// TODO Auto-generated method stub
		return mapper.getDcName(downCaCode);
	}

}
