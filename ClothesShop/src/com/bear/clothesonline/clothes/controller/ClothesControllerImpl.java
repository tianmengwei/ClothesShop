package com.bear.clothesonline.clothes.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bear.clothesonline.clothes.service.ClothesServiceImpl;
import com.bear.clothesonline.entity.Clothes;



@Controller
@RequestMapping("clothes")
public class ClothesControllerImpl {
	@Resource
	private ClothesServiceImpl clothesServiceImpl;
	@RequestMapping("/list")
	public String list(Model model) {
		List<Clothes> list=this.clothesServiceImpl.listAll();
		model.addAttribute("list", list);
		return "list";
	}
}
