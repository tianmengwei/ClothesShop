package com.bear.clothesonline.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="orderdetail")
public class OrderDetail {
	private int orderdetailid;
	private String userName;
	private String clothesName;
	private double clothesPrice;
	private int clothescount;
	private double totalPrice;
	private Order order;
	
	@Id
	@GeneratedValue(generator="foreign")
	@GenericGenerator(name="foreign",strategy="foreign",parameters= {@Parameter(name="property",value="order")})
	public int getOrderdetailid() {
		return orderdetailid;
	}
	public void setOrderdetailid(int orderdetailid) {
		this.orderdetailid = orderdetailid;
	}
	public String getUserName() {
		return userName;
	}
	public String getClothesName() {
		return clothesName;
	}
	public void setClothesName(String clothesName) {
		this.clothesName = clothesName;
	}
	public double getClothesPrice() {
		return clothesPrice;
	}
	public void setClothesPrice(double clothesPrice) {
		this.clothesPrice = clothesPrice;
	}
	public int getClothescount() {
		return clothescount;
	}
	public void setClothescount(int clothescount) {
		this.clothescount = clothescount;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	@ManyToOne
	@JoinColumn(name="orderid")
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	
	
}
