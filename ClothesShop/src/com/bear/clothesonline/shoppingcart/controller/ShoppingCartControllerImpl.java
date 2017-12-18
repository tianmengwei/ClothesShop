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
	
	/*到购物车页面*/
	@RequestMapping("/listCart")
	public String listCart(@RequestParam("userid")int userid,
			        		HttpSession session) throws IOException{
		List<ShoppingCart> shoppingCartList=this.shoppingCartServiceImpl.listAll(userid);
		session.setAttribute("shoppingcartList", shoppingCartList);        
		return "cart";
	}
	
	/*加入购物车*/
	@RequestMapping("/addShoppingCart")
	public String findByClothesid(@RequestParam(value="clothesdetailsid") int id,HttpSession session) {
		//获取到登录时保存的用户对象
		User user = (User)session.getAttribute("user");
		//调用shoppingServiceImpl中的保存图书进入购物车的方法
		this.shoppingCartServiceImpl.saveShop(user, id);
		//得到订单中的信息
		@SuppressWarnings("unchecked")
		Set<Order> shoppingCartSet = (Set<Order>)session.getAttribute("shoppingcart");
		session.setAttribute("shoppingCartSet",shoppingCartSet);
		
		//计算订单中的总价格
		for(Order order : user.getOrderSet()) {
			double sum = 0;
			for(OrderDetail oderdetail : order.getOrderDetailSet()) {
				sum = sum + oderdetail.getTotalPrice();
				session.setAttribute("totalPrice",sum);
			}
		}
		return "cart";
	}
	
	/*删除购物车里的一个订单*/
	@RequestMapping("/delete")
	public String findByBookId(@RequestParam("orderdetailid") int orderdetailid,HttpSession session) {
		User user = (User)session.getAttribute("user");
		Set<Order> orderSet = user.getOrderSet();
		//匹配成功，删除这个订单
		for(Order order:orderSet) {
			for(OrderDetail oderDetail : order.getOrderDetailSet()) {
				if(oderDetail.getOrderdetailid() == orderdetailid) {
					order.getOrderDetailSet().remove(oderDetail);
				}
			}
		}
		OrderDetail orderDetail = this.shoppingCartServiceImpl.findByOrderDetailid(orderdetailid);
		this.shoppingCartServiceImpl.deleteByOrderDetail(orderDetail);
		//重新存入订单
		Set<Order>shoppingCartSet = user.getOrderSet();
		session.setAttribute("shoppingCartSet", shoppingCartSet);
		//删除之后再次进行总价格的计算
		for(Order order : user.getOrderSet()) {
			double sum = 0;
			for(OrderDetail oderdetail : order.getOrderDetailSet()) {
				sum = sum + oderdetail.getTotalPrice();
				session.setAttribute("totalPrice",sum);
			}
		}
		return "bought";
	}

	/*清空购物车*/
	@RequestMapping("/deleteShoppingCart")
	public String deleteShoppingcart(@RequestParam("userid")Integer userid,
			HttpServletResponse response,HttpSession session) throws IOException {	
		this.shoppingCartServiceImpl.deleteShoppingCart(userid);
		return "cart";
	}		
}
