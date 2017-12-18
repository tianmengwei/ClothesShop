package com.bear.clothesonline.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.clothesonline.entity.User;
@Repository
public class UserDaoImpl{
		@Resource
		private SessionFactory sessionFactory;
		
		//зЂВс
		public void addUser(User user) {
			 this.sessionFactory.getCurrentSession().save(user);
		}
		
		public List<User> list() {
			{  
		        
		        @SuppressWarnings("unchecked")  
		        List<User> usersList =  (List<User>) sessionFactory.getCurrentSession().createQuery("from User").list();  
		        return usersList;  
			}
		}
}
