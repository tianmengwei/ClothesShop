package com.bear.clothesonline.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bear.clothesonline.admin.dao.AdminDaoImpl;
import com.bear.clothesonline.entity.Admin;
import com.bear.clothesonline.entity.User;
@Service
public class AdminServiceImpl {
	@Resource
	private AdminDaoImpl adminDaoImpl;
	
	public List<Admin> list() {
		return this.adminDaoImpl.listAdmin(); 
	}
	
	public String findUsersByName(String name) {
		 return this.adminDaoImpl.findUserByName(name); 
	}

	public User findUsersById(Integer id) {
		 return this.adminDaoImpl.findUserById(id);
	}

	public void UpdateInfo(User user) {
		 this.adminDaoImpl.UpdateInfo(user); 
	}

	public void delUserById(Integer id) {
		this.adminDaoImpl.delUserById(id); 
	}
}
