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
	
	 /* 查询ClothesDetail表的所有详细信息*/
	    public List<ClothesDetail> findAll1(){
	    	return this.adminClothesDaoImpl.findAll1();
	    }
	   
	    public ClothesType findAll2(int typeid){
	    	return this.adminClothesDaoImpl.findAllType2(typeid);
	    }
	/*管理员向数据库中添加商品*/
    public void saveClothes(ClothesDetail cd,String clothesType) {
    	this.adminClothesDaoImpl.saveClothes(cd,clothesType);
    }
    
    /* 管理员删除数据库中的商品*/
    public void deletClothes(int clothesid) {
    	this.adminClothesDaoImpl.deleteClothes(clothesid);
    }
    
    /* 管理员修改数据库中的商品*/
    public void updateClothes(ClothesDetail cd,int typeid) {
    	this.adminClothesDaoImpl.updateClothes(cd, typeid);
    }
}
