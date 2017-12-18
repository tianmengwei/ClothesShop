package com.bear.clothesonline.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cartitem")
public class CartItem {
	private int  cartitemid;
	
	private ClothesDetail clothesDetail;
	private ShoppingCart shoppingCart;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getCartitemid() {
		return cartitemid;
	}
	public void setCartitemid(int cartitemid) {
		this.cartitemid = cartitemid;
	}
	
	@ManyToOne
	@JoinColumn(name="id")
	public ClothesDetail getClothesDetail() {
		return clothesDetail;
	}
	public void setClothesDetail(ClothesDetail clothesDetail) {
		this.clothesDetail = clothesDetail;
	}
	
	@ManyToOne
	@JoinColumn(name="shoppingcartid")
	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}
	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}

}
