package com.bear.clothesonline.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;


@Entity
@Table(name="shoppingcart")
public class ShoppingCart {
	private int shoppingcartid;
	private String clothesName;
	private double clothesPrice;
	private int clothescount;
	private String clothesimg1;
	private String delete;
	private User user;
	
	@Id
	@GeneratedValue(generator="foreign")
	@GenericGenerator(name="foreign",strategy="foreign",parameters= {@Parameter(name="property",value="user")})
	public int getShoppingcartid() {
		return shoppingcartid;
	}
	public void setShoppingcartid(int shoppingcartid) {
		this.shoppingcartid = shoppingcartid;
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
	public String getClothesimg1() {
		return clothesimg1;
	}
	public void setClothesimg1(String clothesimg1) {
		this.clothesimg1 = clothesimg1;
	}
	public String getDelete() {
		return delete;
	}
	public void setDelete(String delete) {
		this.delete = delete;
	}
	
	@OneToOne(mappedBy="shoppingCart")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
