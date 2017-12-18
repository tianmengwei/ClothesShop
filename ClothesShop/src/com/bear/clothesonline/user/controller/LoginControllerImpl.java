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
@RequestMapping("user")
public class LoginControllerImpl {
	@Resource
	private UserServiceImpl userLoginServiceImpl;
	
	@RequestMapping("/login")
	public String loginUser(HttpSession session,@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("password") String pwd) {
		List<User> userlist = this.userLoginServiceImpl.list();
		for(int i = 0 ;i < userlist.size();i++) {
			
				if(((userlist.get(i)).getName()).equals(name)&&((userlist.get(i)).getEmail()).equals(email)&&((userlist.get(i)).getPassword()).equals(pwd)) {
					session.setAttribute("name", name);
					session.setAttribute("email", email);
					session.setAttribute("password", pwd);
					return "index";
				}			
		}
		session.setAttribute("error", "UserName or Email or Password is not true, please try again£¡");
		return "login";
	}
}
