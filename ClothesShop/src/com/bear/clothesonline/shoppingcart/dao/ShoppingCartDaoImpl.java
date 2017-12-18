package com.bear.clothesonline.shoppingcart.dao;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bear.clothesonline.entity.ClothesDetail;
import com.bear.clothesonline.entity.Order;
import com.bear.clothesonline.entity.OrderDetail;
import com.bear.clothesonline.entity.ShoppingCart;
import com.bear.clothesonline.entity.User;

@Repository
public class ShoppingCartDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	 public void saveShopping(User user,int id) {
	    	//得到一个session对象
	    	Session session = sessionFactory.getCurrentSession();
	    	/**
	    	 * 创建用户的订单，如果用户的订单为空，则创建一个订单
	    	 * 如果不为空的话，就得到用户的所有订单
	    	 */
			Order order = null;
			if(user.getOrderSet().size()<=0) {
				order = new Order();
			}else {
				Set<Order> orderset = user.getOrderSet();
				for(Order o :orderset) {
					order = o;
				}
			}
				//建立用户和订单之间的联系
				order.setUser(user);
				user.getOrderSet().add(order);
				//更新用户
				session.update(user);
				//保存用户的订单信息
				session.save(order);
				//将id传进findAllDetail方法中，得到查到的clothesdetail对象
				ClothesDetail clothesdetail = (ClothesDetail) this.findAllDetail(id);
				//创建一个订单详情
				OrderDetail orderdetail = new OrderDetail();
				//在订单详情中设置用户的信息和商品的详细信息
				orderdetail.setUserName(user.getName());
				orderdetail.setClothesName(clothesdetail.getClothesname());
				orderdetail.setClothescount(clothesdetail.getClothescount());
				orderdetail.setClothesPrice(clothesdetail.getClothesprice());
				
				//建立order与orderdetail的关联
				orderdetail.setOrder(order);
				order.getOrderDetailSet().add(orderdetail);
				
				
				//保存订单详情更新订单信息
				session.save(orderdetail);
				session.update(order);
				
		}
	 
	 	public ClothesDetail findAllDetail(int id){
			return this.sessionFactory.getCurrentSession().get(ClothesDetail.class,id);

		}
 
	 	/*根据id得到OrderDetail对象*/
		public OrderDetail findByOrderDetailid(int id) {
			return this.sessionFactory.getCurrentSession().get(OrderDetail.class, id);
		}
		/* 删除订单详情中的订单信息*/
		public void deleteByOrderDetail(OrderDetail od) {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(od);
		}  
		
	/* 查询所有购物车订单 */
	public List<ShoppingCart> findAll(int userid){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from ShoppingCart where userid="+userid);
		@SuppressWarnings("unchecked")
		List<ShoppingCart> list=q.list();
		return list;
	}

	/* 清空购物车*/
	public void deleteShoppingCart(int userid) {
		Query q=this.sessionFactory.getCurrentSession().createQuery("delete from ShoppingCart where userid="+userid);
		q.executeUpdate();
	}
	
	/* 通过订单编号查找订单 */
	public ShoppingCart findById(int id) {
		ShoppingCart sh=this.sessionFactory.getCurrentSession().get(ShoppingCart.class,id);	
		return sh;		
	}
}
