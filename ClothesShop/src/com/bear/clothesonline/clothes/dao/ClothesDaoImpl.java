package com.bear.clothesonline.clothes.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.clothesonline.entity.Clothes;


@Repository
public class ClothesDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public List<Clothes> findAll(){
		Query q = this.sessionFactory.openSession().createQuery("from Clothes");
		@SuppressWarnings("unchecked")
		List<Clothes> list=q.list();
		return list;
	}
}
