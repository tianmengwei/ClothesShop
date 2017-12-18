package com.bear.clothesonline.admin.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.clothesonline.entity.Admin;
import com.bear.clothesonline.entity.User;

@Repository
public class AdminDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Admin> listAdmin() {
		{  
	        
	        @SuppressWarnings("unchecked")  
	        List<Admin> adminList =  (List<Admin>) sessionFactory.getCurrentSession().createQuery("from Admin").list();  
	        return adminList;  
		}
	}
	
	public List<User> list() {
		{  
	        
	        @SuppressWarnings("unchecked")  
	        List<User> usersList =  (List<User>) sessionFactory.getCurrentSession().createQuery("from User").list();  
	        return usersList;  
		}
	}

	@SuppressWarnings("unchecked")  
    public String findUserByName(String name) {
		  String hql = "from User u where u.name = "+"'"+name+"'";
	      System.out.println(name);  
	      List<User> usersList =  (List<User>) sessionFactory.getCurrentSession().createQuery(hql).list();  
	      System.out.println(usersList.size());  
	      if(usersList.size()>0){  
	          return "true";  
	      }else{  
	          return "false";  
	      }  
	}
	
	public User findUserById(Integer id) {
		return (User) sessionFactory.getCurrentSession().get(User.class,id); 
	}
	
	public void UpdateInfo(User user) {
		String hql = "update User u set u.name=? where u.userid=?";  
        Query q = sessionFactory.getCurrentSession().createQuery(hql);  
        q.setString("name", user.getName());  
        q.setInteger(1, user.getUserid());  
        q.setParameter("password", user.getPassword());
        q.executeUpdate();  
	}
	
	public void delUserById(Integer id) {
		 User u = (User) sessionFactory.getCurrentSession().get(User.class,id);  
         sessionFactory.getCurrentSession().delete(u);  		
	}

}
