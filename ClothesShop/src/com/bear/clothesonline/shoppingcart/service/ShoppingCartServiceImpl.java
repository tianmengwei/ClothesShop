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
	
	/*添加商品到购物车*/
	public void saveShop(User user,int id){
		this.shoppingCartDaoImpl.saveShopping(user,id);
	} 
	
	/*查找所有购物车商品 */
	public List<ShoppingCart> listAll(int userid){
		return this.shoppingCartDaoImpl.findAll(userid);
	} 

	/*删除一个订单 */
    public OrderDetail findByOrderDetailid(int id) {
  	  return this.shoppingCartDaoImpl.findByOrderDetailid(id);
    }
    public void deleteByOrderDetail(OrderDetail od) {
   	 this.shoppingCartDaoImpl.deleteByOrderDetail(od);
    }

    /*清空购物车*/
	public void deleteShoppingCart(int userid) {
		this.shoppingCartDaoImpl.deleteShoppingCart(userid);
	}
	
	/*通过id查找订单*/
	public ShoppingCart findById(int id) {
		return this.shoppingCartDaoImpl.findById(id);
	}	
}
