package com.bear.clothesonline.shoppingcart.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.clothesonline.entity.OrderDetail;
import com.bear.clothesonline.entity.ShoppingCart;
import com.bear.clothesonline.entity.User;
import com.bear.clothesonline.shoppingcart.dao.ShoppingCartDaoImpl;

@Service
@Transactional(readOnly=true)
public class ShoppingCartServiceImpl {
	@Resource
	private ShoppingCartDaoImpl shoppingCartDaoImpl;
	
	/*�����Ʒ�����ﳵ*/
	public void saveShop(User user,int id){
		this.shoppingCartDaoImpl.saveShopping(user,id);
	} 
	
	/*�������й��ﳵ��Ʒ */
	public List<ShoppingCart> listAll(int userid){
		return this.shoppingCartDaoImpl.findAll(userid);
	} 

	/*ɾ��һ������ */
    public OrderDetail findByOrderDetailid(int id) {
  	  return this.shoppingCartDaoImpl.findByOrderDetailid(id);
    }
    public void deleteByOrderDetail(OrderDetail od) {
   	 this.shoppingCartDaoImpl.deleteByOrderDetail(od);
    }

    /*��չ��ﳵ*/
	public void deleteShoppingCart(int userid) {
		this.shoppingCartDaoImpl.deleteShoppingCart(userid);
	}
	
	/*ͨ��id���Ҷ���*/
	public ShoppingCart findById(int id) {
		return this.shoppingCartDaoImpl.findById(id);
	}	
}
