package com.bear.clothesonline.adminclothes.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.clothesonline.adminclothes.service.AdminClothesServiceImpl;
import com.bear.clothesonline.entity.ClothesDetail;

@Controller
@RequestMapping("clothes")
public class AdminClothesControllerImpl {
	@Resource
	private AdminClothesServiceImpl adminClothesServiceImpl;
	
	/*查询ClothesDetail类的所有详细信息*/
	@RequestMapping("/list1")
	public String findAll1(HttpSession session) {
		List<ClothesDetail> detailList1 = this.adminClothesServiceImpl.findAll1();
		session.setAttribute("detailList1", detailList1);
		return "alist";
	}

	/*管理员向数据库中添加商品 */
	@RequestMapping("/addClothes")
	public String addClothes(HttpSession session,@RequestParam("Img1") String Img1,@RequestParam("clothesname") String clothesname,
			@RequestParam("clothesType") String clothesType,@RequestParam("introduce") String introduce,
			@RequestParam("clothesprice")int clothesprice) {
		//将表单中获取到的属性值存入一个对象中
		ClothesDetail cd = new ClothesDetail();
		cd.setImg1(Img1);
		cd.setClothesname(clothesname);
		cd.setIntroduce(introduce);
		cd.setClothesprice(clothesprice);
		//将该对象保存到数据库，同时保存该商品的类型
		this.adminClothesServiceImpl.saveClothes(cd, clothesType);
		session.setAttribute("cd", cd);
		//在返回后台首页之前重新进行查询
		List<ClothesDetail> detailList1 = this.adminClothesServiceImpl.findAll1();
		session.setAttribute("detailList1", detailList1);
		return "alist";
	}
	
	/* 管理员删除数据库中的商品*/
	@RequestMapping("adminDelete")
	public String adminRemoveClothes(HttpSession session,@RequestParam("id") int clothesid) {
		//调用方法对数据库表中的商品进行删除
		this.adminClothesServiceImpl.deletClothes(clothesid);
		//在返回后台首页之前重新进行查询
		List<ClothesDetail> detailList1 = this.adminClothesServiceImpl.findAll1();
		session.setAttribute("detailList1", detailList1);
		return "alist";
	}
	
	/*管理员对数据库中的商品进行修改*/
	@RequestMapping("/updateClothes")
	public String editClothes(HttpSession session,@RequestParam("Img1") String Img1,@RequestParam("clothesname") String clothesname,
			@RequestParam("clothesType") int typeid,@RequestParam("introduce") String introduce,
			@RequestParam("clothesprice") int clothesprice) {
		//获取session中的商品参数
		ClothesDetail cd = (ClothesDetail) session.getAttribute("clothes");
		//将表单中获取到的参数重新存入ClothesDetail对象中
		cd.setImg1(Img1);
		cd.setClothesname(clothesname);
		cd.setIntroduce(introduce);
		cd.setClothesprice(clothesprice);
		//将修改之后的对象保存到数据库
		this.adminClothesServiceImpl.updateClothes(cd,typeid);
		session.setAttribute("cd", cd);
		//在返回后台首页之前重新进行查询
		List<ClothesDetail> detailList1 = this.adminClothesServiceImpl.findAll1();
		session.setAttribute("detailList1", detailList1);
		return "alist";
	}
}
