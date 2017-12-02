package com.bear.clothesonline.clothes.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.clothesonline.clothes.dao.ClothesDaoImpl;
import com.bear.clothesonline.entity.Clothes;


@Service
@Transactional(readOnly=true)
public class ClothesServiceImpl {
	@Resource
	private ClothesDaoImpl clothesDaoImpl;
	public List<Clothes> listAll(){
		return this.clothesDaoImpl.findAll();
	}
}
