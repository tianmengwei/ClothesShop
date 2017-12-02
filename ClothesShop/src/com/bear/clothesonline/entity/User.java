package com.bear.clothesonline.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	private Integer userid;
	private String name;
	private String password;
	private String telephone;
	private String address;
	private String email;
	private ShoppingCart shoppingCart;
	private Set<Order> OrderSet = new HashSet<Order>();
	private Set<Log> LogSet = new HashSet<Log>();
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
		
	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn(name="shoppingcartid")
	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}
	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}
	
	@OneToMany(mappedBy="user",targetEntity=Order.class,cascade=CascadeType.ALL)
	public Set<Order> getOrderSet() {
		return OrderSet;
	}
	public void setOrderSet(Set<Order> orderSet) {
		OrderSet = orderSet;
	}
	
	@OneToMany(mappedBy="user",targetEntity=Log.class,cascade=CascadeType.ALL)
	public Set<Log> getLogSet() {
		return LogSet;
	}
	public void setLogSet(Set<Log> logSet) {
		LogSet = logSet;
	}
	
	
}
