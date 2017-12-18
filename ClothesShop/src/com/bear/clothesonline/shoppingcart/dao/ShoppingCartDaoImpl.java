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
	    	//�õ�һ��session����
	    	Session session = sessionFactory.getCurrentSession();
	    	/**
	    	 * �����û��Ķ���������û��Ķ���Ϊ�գ��򴴽�һ������
	    	 * �����Ϊ�յĻ����͵õ��û������ж���
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
				//�����û��Ͷ���֮�����ϵ
				order.setUser(user);
				user.getOrderSet().add(order);
				//�����û�
				session.update(user);
				//�����û��Ķ�����Ϣ
				session.save(order);
				//��id����findAllDetail�����У��õ��鵽��clothesdetail����
				ClothesDetail clothesdetail = (ClothesDetail) this.findAllDetail(id);
				//����һ����������
				OrderDetail orderdetail = new OrderDetail();
				//�ڶ��������������û�����Ϣ����Ʒ����ϸ��Ϣ
				orderdetail.setUserName(user.getName());
				orderdetail.setClothesName(clothesdetail.getClothesname());
				orderdetail.setClothescount(clothesdetail.getClothescount());
				orderdetail.setClothesPrice(clothesdetail.getClothesprice());
				
				//����order��orderdetail�Ĺ���
				orderdetail.setOrder(order);
				order.getOrderDetailSet().add(orderdetail);
				
				
				//���涩��������¶�����Ϣ
				session.save(orderdetail);
				session.update(order);
				
		}
	 
	 	public ClothesDetail findAllDetail(int id){
			return this.sessionFactory.getCurrentSession().get(ClothesDetail.class,id);

		}
 
	 	/*����id�õ�OrderDetail����*/
		public OrderDetail findByOrderDetailid(int id) {
			return this.sessionFactory.getCurrentSession().get(OrderDetail.class, id);
		}
		/* ɾ�����������еĶ�����Ϣ*/
		public void deleteByOrderDetail(OrderDetail od) {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(od);
		}  
		
	/* ��ѯ���й��ﳵ���� */
	public List<ShoppingCart> findAll(int userid){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from ShoppingCart where userid="+userid);
		@SuppressWarnings("unchecked")
		List<ShoppingCart> list=q.list();
		return list;
	}

	/* ��չ��ﳵ*/
	public void deleteShoppingCart(int userid) {
		Query q=this.sessionFactory.getCurrentSession().createQuery("delete from ShoppingCart where userid="+userid);
		q.executeUpdate();
	}
	
	/* ͨ��������Ų��Ҷ��� */
	public ShoppingCart findById(int id) {
		ShoppingCart sh=this.sessionFactory.getCurrentSession().get(ShoppingCart.class,id);	
		return sh;		
	}
}
