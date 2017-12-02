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
public class RegisterControllerImpl {
	
	public class UserLoginController {
		@Resource
		private UserServiceImpl userRegistServiceImpl;
		@RequestMapping("/regist")
		public String addUser(Model model,@RequestParam("name") String name,
				@RequestParam("email") String email,@RequestParam("password") String pwd) {
		List <User>	 userlist = this.userRegistServiceImpl.list();
		for(int i = 0 ;i < userlist.size();i++) {
			if(((userlist.get(i)).getName()).equals(name)&&((userlist.get(i)).getEmail()).equals(email)) {
				model.addAttribute("error", "该用户已经注册,请进行登录！");
				return "front/login";
			}
		}

		User user = new User();
		user.setName(name);
		user.setPassword(pwd);
		user.setEmail(email);

	    this.userRegistServiceImpl.addUsers(user);  
	    model.addAttribute("user",user);
	    model.addAttribute("success", "成功注册,请登录！");
	    return "front/index";  
	        
		}
	}
}
