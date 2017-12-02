package com.bear.clothesonline.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.clothesonline.entity.User;
@Repository("userdaointerface")
public class UserDaoImpl implements UserDaoInterface{
		@Resource
		private SessionFactory sessionFactory;
		
		//×¢²á
		public void addUser(User user) {
			 this.sessionFactory.openSession().save(user);
		}
		//µÇÂ¼
		@SuppressWarnings("unchecked")  
	    @Override  
		public String findUserByName(String name) {
			  String sql = "from User u where u.name = "+"'"+name+"'";
		      System.out.println(name);  
		      List<User> usersList =  (List<User>) sessionFactory.openSession().createQuery(sql).list();  
		      System.out.println(usersList.size());  
		      if(usersList.size()>0){  
		          return "true";  
		      }else{  
		          return "false";  
		      }  
		}
		@Override
		public List<User> list() {
			{  
		        
		        @SuppressWarnings("unchecked")  
		        List<User> usersList =  (List<User>) sessionFactory.openSession().createQuery("from User").list();  
		        return usersList;  
			}
		}
		@Override
		public User findUserById(Integer id) {
			return (User) sessionFactory.openSession().get(User.class,id); 
		}
		@Override
		public void UpdateInfo(User user) {
			String sql = "update User  set name=? where userid=?";  
	        Query q = sessionFactory.openSession().createQuery(sql);  
	        q.setString("name", user.getName());  
	        q.setInteger(1, user.getUserid());  
	        q.setParameter("password", user.getPassword());
	        q.executeUpdate();  
		}
		@Override
		public void delUserById(Integer id) {
			 User u = (User) sessionFactory.openSession().get(User.class,id);  
	         sessionFactory.getCurrentSession().delete(u);  		
		}
	
}
