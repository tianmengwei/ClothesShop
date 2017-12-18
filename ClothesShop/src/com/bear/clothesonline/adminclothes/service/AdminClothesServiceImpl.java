package com.bear.clothesonline.adminclothes.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.clothesonline.adminclothes.dao.AdminClothesDaoImpl;
import com.bear.clothesonline.entity.ClothesDetail;
import com.bear.clothesonline.entity.ClothesType;

@Service
@Transactional
public class AdminClothesServiceImpl {
	@Resource
	private AdminClothesDaoImpl adminClothesDaoImpl;
	
	 /* ��ѯClothesDetail���������ϸ��Ϣ*/
	    public List<ClothesDetail> findAll1(){
	    	return this.adminClothesDaoImpl.findAll1();
	    }
	   
	    public ClothesType findAll2(int typeid){
	    	return this.adminClothesDaoImpl.findAllType2(typeid);
	    }
	/*����Ա�����ݿ��������Ʒ*/
    public void saveClothes(ClothesDetail cd,String clothesType) {
    	this.adminClothesDaoImpl.saveClothes(cd,clothesType);
    }
    
    /* ����Աɾ�����ݿ��е���Ʒ*/
    public void deletClothes(int clothesid) {
    	this.adminClothesDaoImpl.deleteClothes(clothesid);
    }
    
    /* ����Ա�޸����ݿ��е���Ʒ*/
    public void updateClothes(ClothesDetail cd,int typeid) {
    	this.adminClothesDaoImpl.updateClothes(cd, typeid);
    }
}
