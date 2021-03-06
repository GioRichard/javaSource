package com.gio.shop.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gio.shop.entities.Categories;

@Service
public class CategoriesService extends BaseService<Categories> {
	@Override
	protected Class<Categories> clazz() {
		return Categories.class;
	}

	public List<Categories> findAllActive(){
		String sql = "select * from tbl_category where status = 1";
		return super.executeNativeSql(sql,-1);
	}	
}
