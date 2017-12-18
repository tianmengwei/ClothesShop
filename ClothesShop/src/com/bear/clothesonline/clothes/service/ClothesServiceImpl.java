package com.bear.clothesonline.clothes.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.clothesonline.clothes.dao.ClothesDaoImpl;
import com.bear.clothesonline.entity.Clothes;
import com.bear.clothesonline.entity.ClothesDetail;
import com.bear.clothesonline.entity.Page;


@Service
@Transactional(readOnly=true)
public class ClothesServiceImpl {
	@Resource
	private ClothesDaoImpl clothesDaoImpl;
	
	/*查询所有产品*/
	public List<Clothes> listAll(){
		return this.clothesDaoImpl.findAll();
	}
	/*分页*/
	public Page queryForPage(int currentPage,int pageSize) {
        Page page = new Page();       
        //总记录数
        int allRow = clothesDaoImpl.getAllRowCount();
        //当前页开始记录
        int offset = page.countOffset(currentPage,pageSize);  
        //分页查询结果集
        List<Clothes> list = clothesDaoImpl.queryForPage(offset, pageSize); 
        page.setPageNo(currentPage);
        page.setPageSize(pageSize);
        page.setTotalRecords(allRow);
        page.setList(list);    
        return page;
    }
	public void Servicesave(Clothes clothes){
 	   clothesDaoImpl.save(clothes);
    }
   public void Serviceupdate(Clothes clothes){
 	  clothesDaoImpl.update(clothes);
   }
   public void Servicedelete(Clothes clothes){
 	  clothesDaoImpl.delete(clothes);
   }
   public int ServicegetCount(){
       return clothesDaoImpl.getAllRowCount();
   }
      
   /*根据typeid查询记录*/
   public List <Clothes> QueryByTypeid(int typeid){
       return clothesDaoImpl.QueryByTypeid(typeid);
   }
  /* 根据衣服详情id查询详情*/
   public List<ClothesDetail> findAllClothesDetail(int id){
	   return this.clothesDaoImpl.findClothesDetailById(id);
   }

   /*根据clothesname查询详情*/
   public List<ClothesDetail> findClothesDetail(String clothesname){
	   return this.clothesDaoImpl.findClothesDetailByClothesName(clothesname);
   }
}
