package com.bear.clothesonline.user.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.clothesonline.entity.User;
import com.bear.clothesonline.user.service.UserServiceImpl;

@Controller
@RequestMapping("user1")
public class RegisterControllerImpl {
	
		@Resource
		private UserServiceImpl userRegistServiceImpl;
		@RequestMapping("/regist")
		public String addUser(@RequestParam("name") String name,
				@RequestParam("email") String email,@RequestParam("password") String pwd,
				HttpSession session) {
		List <User>	 userlist = this.userRegistServiceImpl.list();
		for(int i = 0 ;i < userlist.size();i++) {
			if(((userlist.get(i)).getName()).equals(name)||((userlist.get(i)).getEmail()).equals(email)||((userlist.get(i)).getPassword()).equals(pwd)) {
				session.setAttribute("error1", "THE USER HAS EXISTED,PLEASE LOGIN£¡");
				return "login";
			}
			
		}

		User user = new User();
		user.setName(name);
		user.setPassword(pwd);
		user.setEmail(email);

	    this.userRegistServiceImpl.addUsers(user);  
	    session.setAttribute("user",user);
	    session.setAttribute("success", "Regist sucessfully£¡");
	    return "index";  
	        
		}
	
}
