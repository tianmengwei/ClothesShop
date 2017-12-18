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
	
	/*��ѯ���в�Ʒ*/
	public List<Clothes> listAll(){
		return this.clothesDaoImpl.findAll();
	}
	/*��ҳ*/
	public Page queryForPage(int currentPage,int pageSize) {
        Page page = new Page();       
        //�ܼ�¼��
        int allRow = clothesDaoImpl.getAllRowCount();
        //��ǰҳ��ʼ��¼
        int offset = page.countOffset(currentPage,pageSize);  
        //��ҳ��ѯ�����
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
      
   /*����typeid��ѯ��¼*/
   public List <Clothes> QueryByTypeid(int typeid){
       return clothesDaoImpl.QueryByTypeid(typeid);
   }
  /* �����·�����id��ѯ����*/
   public List<ClothesDetail> findAllClothesDetail(int id){
	   return this.clothesDaoImpl.findClothesDetailById(id);
   }

   /*����clothesname��ѯ����*/
   public List<ClothesDetail> findClothesDetail(String clothesname){
	   return this.clothesDaoImpl.findClothesDetailByClothesName(clothesname);
   }
}
