package com.bear.clothesonline.admin.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.clothesonline.admin.service.AdminServiceImpl;
import com.bear.clothesonline.entity.Admin;

@Controller
@RequestMapping("admin")
public class AdminControllerImpl {
	@Resource
	private AdminServiceImpl adminServiceImpl;
	
	@RequestMapping("/aLogin")
	public String loginUser(HttpSession session,@RequestParam("aname") String name,@RequestParam("apassword") String pwd) {
		List<Admin> adminlist = this.adminServiceImpl.list();
		for(int i = 0 ;i < adminlist.size();i++) {			
				if(((adminlist.get(i)).getAname()).equals(name)&&((adminlist.get(i)).getApassword()).equals(pwd)) {
					session.setAttribute("name", name);
					session.setAttribute("password", pwd);
					return "aindex";
				}			
		}
		session.setAttribute("error", "AdminName or Password is not true, please try again£¡");
		return "alogin";
	}
}
