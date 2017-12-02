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

	public String findUsersByName(String name) {
		 return this.userDaoImpl.findUserByName(name); 
	}

	public List<User> list() {
		return this.userDaoImpl.list(); 
	}

	public User findUsersById(Integer id) {
		 return this.userDaoImpl.findUserById(id);
	}

	public void UpdateInfo(User user) {
		 this.userDaoImpl.UpdateInfo(user); 
	}

	public void delUserById(Integer id) {
		this.userDaoImpl.delUserById(id); 
	}
	
}
