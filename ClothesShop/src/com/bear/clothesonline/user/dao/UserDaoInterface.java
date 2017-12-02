package com.bear.clothesonline.user.dao;

import java.util.List;

import com.bear.clothesonline.entity.User;

public interface UserDaoInterface {
	public void addUser(User user);  
    public String findUserByName(String name);  
    public List<User> list();  
    public User findUserById(Integer id);  
    public void UpdateInfo(User user);  
    public void delUserById(Integer id);
}
