package com.bear.clothesonline.shoppingcart.controller;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.clothesonline.entity.Order;
import com.bear.clothesonline.entity.OrderDetail;
import com.bear.clothesonline.entity.ShoppingCart;
import com.bear.clothesonline.entity.User;
import com.bear.clothesonline.shoppingcart.service.ShoppingCartServiceImpl;
import com.bear.clothesonline.user.service.UserServiceImpl;

@Controller
@RequestMapping("cart")
public class ShoppingCartControllerImpl {
	@Resource
	private ShoppingCartServiceImpl shoppingCartServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	
	/*�����ﳵҳ��*/
	@RequestMapping("/listCart")
	public String listCart(@RequestParam("userid")int userid,
			        		HttpSession session) throws IOException{
		List<ShoppingCart> shoppingCartList=this.shoppingCartServiceImpl.listAll(userid);
		session.setAttribute("shoppingcartList", shoppingCartList);        
		return "cart";
	}
	
	/*���빺�ﳵ*/
	@RequestMapping("/addShoppingCart")
	public String findByClothesid(@RequestParam(value="clothesdetailsid") int id,HttpSession session) {
		//��ȡ����¼ʱ������û�����
		User user = (User)session.getAttribute("user");
		//����shoppingServiceImpl�еı���ͼ����빺�ﳵ�ķ���
		this.shoppingCartServiceImpl.saveShop(user, id);
		//�õ������е���Ϣ
		@SuppressWarnings("unchecked")
		Set<Order> shoppingCartSet = (Set<Order>)session.getAttribute("shoppingcart");
		session.setAttribute("shoppingCartSet",shoppingCartSet);
		
		//���㶩���е��ܼ۸�
		for(Order order : user.getOrderSet()) {
			double sum = 0;
			for(OrderDetail oderdetail : order.getOrderDetailSet()) {
				sum = sum + oderdetail.getTotalPrice();
				session.setAttribute("totalPrice",sum);
			}
		}
		return "cart";
	}
	
	/*ɾ�����ﳵ���һ������*/
	@RequestMapping("/delete")
	public String findByBookId(@RequestParam("orderdetailid") int orderdetailid,HttpSession session) {
		User user = (User)session.getAttribute("user");
		Set<Order> orderSet = user.getOrderSet();
		//ƥ��ɹ���ɾ���������
		for(Order order:orderSet) {
			for(OrderDetail oderDetail : order.getOrderDetailSet()) {
				if(oderDetail.getOrderdetailid() == orderdetailid) {
					order.getOrderDetailSet().remove(oderDetail);
				}
			}
		}
		OrderDetail orderDetail = this.shoppingCartServiceImpl.findByOrderDetailid(orderdetailid);
		this.shoppingCartServiceImpl.deleteByOrderDetail(orderDetail);
		//���´��붩��
		Set<Order>shoppingCartSet = user.getOrderSet();
		session.setAttribute("shoppingCartSet", shoppingCartSet);
		//ɾ��֮���ٴν����ܼ۸�ļ���
		for(Order order : user.getOrderSet()) {
			double sum = 0;
			for(OrderDetail oderdetail : order.getOrderDetailSet()) {
				sum = sum + oderdetail.getTotalPrice();
				session.setAttribute("totalPrice",sum);
			}
		}
		return "bought";
	}

	/*��չ��ﳵ*/
	@RequestMapping("/deleteShoppingCart")
	public String deleteShoppingcart(@RequestParam("userid")Integer userid,
			HttpServletResponse response,HttpSession session) throws IOException {	
		this.shoppingCartServiceImpl.deleteShoppingCart(userid);
		return "cart";
	}		
}
