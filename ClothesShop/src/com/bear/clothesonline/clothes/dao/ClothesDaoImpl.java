package com.bear.clothesonline.clothes.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.clothesonline.entity.Clothes;
import com.bear.clothesonline.entity.ClothesDetail;

@Repository
public class ClothesDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public List<Clothes> findAll(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Clothes");
		@SuppressWarnings("unchecked")
		List<Clothes> list=q.list();
		return list;
	}
	
	/*ʵ�ַ�ҳ*/
	@SuppressWarnings("unchecked")
	public List<Clothes> queryForPage(int offset, int length) {
		Query query= (Query) sessionFactory.getCurrentSession().createQuery("from Clothes");    
	    query.setFirstResult(offset);
	    query.setMaxResults(length);            
	    return query.list(); 
	  }
	 public void save(Clothes clothes){
	     sessionFactory.getCurrentSession().save(clothes);
	 }
	 public void update(Clothes clothes) {   
	     sessionFactory.getCurrentSession().update(clothes);
	 }
	     public void delete(Clothes clothes) {      
	     sessionFactory.getCurrentSession().delete(clothes);
	 }
	 /*��ѯ��¼����*/
	 public int getAllRowCount(){
	     int count=((Long) sessionFactory.getCurrentSession()
	                .createQuery( "select count(*) from Clothes").iterate().next()).intValue();
	     return count;  
	     
	 }
	 
	 	/*����typeid��ѯ��¼*/
		@SuppressWarnings("unchecked")
		public List<Clothes> QueryByTypeid(int typeid) {
		    Query q = this.sessionFactory.getCurrentSession().createQuery("from Clothes where typeid=?");
		    q.setParameter(0, typeid);
		    return q.list();
		}
		/*�����·�����id��ѯ����*/
		@SuppressWarnings("unchecked")
		public List<ClothesDetail> findClothesDetailById(int id){
			Query q = this.sessionFactory.getCurrentSession().createQuery("from ClothesDetail where clothesdetailsid=?");
			q.setParameter(0, id);
			return q.list();
		}
		/*����clothesname��ѯ����*/
		@SuppressWarnings("unchecked")
		public List<ClothesDetail> findClothesDetailByClothesName(String clothesname){
			Query q = this.sessionFactory.getCurrentSession().createQuery("from ClothesDetail where clothesname=?");
			q.setParameter(0, clothesname);
			return q.list();
		}

}
