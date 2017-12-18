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
	
	/*��ѯClothesDetail���������ϸ��Ϣ*/
	@RequestMapping("/list1")
	public String findAll1(HttpSession session) {
		List<ClothesDetail> detailList1 = this.adminClothesServiceImpl.findAll1();
		session.setAttribute("detailList1", detailList1);
		return "alist";
	}

	/*����Ա�����ݿ��������Ʒ */
	@RequestMapping("/addClothes")
	public String addClothes(HttpSession session,@RequestParam("Img1") String Img1,@RequestParam("clothesname") String clothesname,
			@RequestParam("clothesType") String clothesType,@RequestParam("introduce") String introduce,
			@RequestParam("clothesprice")int clothesprice) {
		//�����л�ȡ��������ֵ����һ��������
		ClothesDetail cd = new ClothesDetail();
		cd.setImg1(Img1);
		cd.setClothesname(clothesname);
		cd.setIntroduce(introduce);
		cd.setClothesprice(clothesprice);
		//���ö��󱣴浽���ݿ⣬ͬʱ�������Ʒ������
		this.adminClothesServiceImpl.saveClothes(cd, clothesType);
		session.setAttribute("cd", cd);
		//�ڷ��غ�̨��ҳ֮ǰ���½��в�ѯ
		List<ClothesDetail> detailList1 = this.adminClothesServiceImpl.findAll1();
		session.setAttribute("detailList1", detailList1);
		return "alist";
	}
	
	/* ����Աɾ�����ݿ��е���Ʒ*/
	@RequestMapping("adminDelete")
	public String adminRemoveClothes(HttpSession session,@RequestParam("id") int clothesid) {
		//���÷��������ݿ���е���Ʒ����ɾ��
		this.adminClothesServiceImpl.deletClothes(clothesid);
		//�ڷ��غ�̨��ҳ֮ǰ���½��в�ѯ
		List<ClothesDetail> detailList1 = this.adminClothesServiceImpl.findAll1();
		session.setAttribute("detailList1", detailList1);
		return "alist";
	}
	
	/*����Ա�����ݿ��е���Ʒ�����޸�*/
	@RequestMapping("/updateClothes")
	public String editClothes(HttpSession session,@RequestParam("Img1") String Img1,@RequestParam("clothesname") String clothesname,
			@RequestParam("clothesType") int typeid,@RequestParam("introduce") String introduce,
			@RequestParam("clothesprice") int clothesprice) {
		//��ȡsession�е���Ʒ����
		ClothesDetail cd = (ClothesDetail) session.getAttribute("clothes");
		//�����л�ȡ���Ĳ������´���ClothesDetail������
		cd.setImg1(Img1);
		cd.setClothesname(clothesname);
		cd.setIntroduce(introduce);
		cd.setClothesprice(clothesprice);
		//���޸�֮��Ķ��󱣴浽���ݿ�
		this.adminClothesServiceImpl.updateClothes(cd,typeid);
		session.setAttribute("cd", cd);
		//�ڷ��غ�̨��ҳ֮ǰ���½��в�ѯ
		List<ClothesDetail> detailList1 = this.adminClothesServiceImpl.findAll1();
		session.setAttribute("detailList1", detailList1);
		return "alist";
	}
}
