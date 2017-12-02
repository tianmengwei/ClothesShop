package com.bear.clothesonline.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="order")
public class Order {
	private int orderid;
	private Set<OrderDetail> orderDetailSet = new HashSet<OrderDetail>();
	private User user;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	
	@OneToMany(mappedBy="order",targetEntity=OrderDetail.class,cascade=CascadeType.ALL)
	public Set<OrderDetail> getOrderDetailSet() {
		return orderDetailSet;
	}
	public void setOrderDetailSet(Set<OrderDetail> orderDetailSet) {
		this.orderDetailSet = orderDetailSet;
	}
	
	@ManyToOne
	@JoinColumn(name="USERID")
	public User getUser() {
		return user;
	}	
	public void setUser(User user) {
		this.user = user;
	}
	
}
