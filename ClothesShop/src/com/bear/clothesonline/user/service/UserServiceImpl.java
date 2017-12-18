package com.bear.clothesonline.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bear.clothesonline.entity.User;
import com.bear.clothesonline.user.dao.UserDaoImpl;
@Service
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userDaoImpl;
	
	public boolean addUsers(User user) {
		this.userDaoImpl.addUser(user);  
		return true;	      	
	}
	
	public List<User> list() {
		return this.userDaoImpl.list(); 
	}
}
