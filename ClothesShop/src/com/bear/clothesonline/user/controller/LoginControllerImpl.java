package com.bear.clothesonline.user.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String loginUser(Model model,@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("password") String pwd) {
		List<User> userlist = this.userLoginServiceImpl.list();
		for(int i = 0 ;i < userlist.size();i++) {
			if(((userlist.get(i)).getName()).equals(name)&&((userlist.get(i)).getEmail()).equals(email)&&((userlist.get(i)).getPassword()).equals(pwd)) {
				model.addAttribute("name", name);
				model.addAttribute("email", email);
				model.addAttribute("password", pwd);
				return "front/index";
			}
		}
		model.addAttribute("error", "The user does not exist, please register first£¡");
		return "front/login";
	}
}
