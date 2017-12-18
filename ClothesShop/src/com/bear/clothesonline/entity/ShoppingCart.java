package com.bear.clothesonline.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;


@Entity
@Table(name="shoppingcart")
public class ShoppingCart {
	private int shoppingcartid;
	private Integer userid;
	private String clothesName;
	private double clothesPrice;
	private int clothesCount;
	private String clothesimg1;
	private String delete;
	private User user;
	private Set<CartItem> cartItemSet = new HashSet<CartItem>();
	
	@Id
	@GeneratedValue(generator="foreign")
	@GenericGenerator(name="foreign",strategy="foreign",parameters= {@Parameter(name="property",value="user")})
	public int getShoppingcartid() {
		return shoppingcartid;
	}
	public void setShoppingcartid(int shoppingcartid) {
		this.shoppingcartid = shoppingcartid;
	}	
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
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
	public int getClothesCount() {
		return clothesCount;
	}
	public void setClothesCount(int clothesCount) {
		this.clothesCount = clothesCount;
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
	
	@OneToMany(targetEntity=CartItem.class,cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<CartItem> getCartItemSet() {
		return cartItemSet;
	}
	public void setCartItemSet(Set<CartItem> cartItemSet) {
		this.cartItemSet = cartItemSet;
	}
}
