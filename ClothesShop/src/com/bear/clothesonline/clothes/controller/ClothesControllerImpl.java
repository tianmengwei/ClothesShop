package com.bear.clothesonline.clothes.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.clothesonline.clothes.service.ClothesServiceImpl;
import com.bear.clothesonline.entity.Clothes;
import com.bear.clothesonline.entity.ClothesDetail;
import com.bear.clothesonline.entity.Page;



@Controller
@RequestMapping("clothes")
public class ClothesControllerImpl {
	@Resource
	private ClothesServiceImpl clothesServiceImpl;
	
	/*跳到首页*/
	@RequestMapping("/list")
	public String list(Model model) {
		List<Clothes> list=this.clothesServiceImpl.listAll();
		model.addAttribute("list", list);
		return "index";
	}
		
	/*找到所有的记录并实现分页*/
	@RequestMapping("/list2")
		public String findAll(HttpServletRequest request,HttpServletResponse response) {   
		        String pageNo = request.getParameter("pageNo");
		        if (pageNo == null) {
		            pageNo = "1";
		        }
		        Page page = clothesServiceImpl.queryForPage(Integer.valueOf(pageNo), 4);
		        request.setAttribute("page", page);
		        List<Clothes> list2 = page.getList();
		        request.setAttribute("list2", list2);
		        return "list";
		}
	
	/*返回查询后的分类列表页*/
	@RequestMapping("/findByTypeid")
	public String findByTypeid(Model model,@RequestParam("typeid") int typeid) {
		List<Clothes> submitList = this.clothesServiceImpl.QueryByTypeid(typeid);
		model.addAttribute("submitList",submitList);
		return "liebiao";
	}

	/*返回详情页*/
	@RequestMapping("/findAllClothesDetail")
	public String findAllClothesDetail(Model model,@RequestParam("id") int id) {
		List<ClothesDetail> detailList = this.clothesServiceImpl.findAllClothesDetail(id);
		model.addAttribute("detailList", detailList);
		return "details";
	}
	
	@RequestMapping("/findClothesDetail")
	public String findAllClothesDetail(Model model,@RequestParam("clothesname") String clothesname) {
		List<ClothesDetail> detailList = this.clothesServiceImpl.findClothesDetail(clothesname);
		model.addAttribute("detailList", detailList);
		return "details";
	}
}
