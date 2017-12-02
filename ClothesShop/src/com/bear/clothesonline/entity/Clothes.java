package com.bear.clothesonline.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;



@Entity
@Table(name="clothes")
public class Clothes {
	private Integer id;
	private String name;	
	private double price;
	private String img1;
	private ClothesType clothesType;
	private ClothesDetail clothesDetail;
	
	
   
	public String getName() {
		return name;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	
	@ManyToOne
	@JoinColumn(name="TYPEID")
	public ClothesType getClothesType() {
		return clothesType;
	}
	public void setClothesType(ClothesType clothesType) {
		this.clothesType = clothesType;
	}
	
	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn(name="CLOTHESDETAILSID")
	public ClothesDetail getClothesDetail() {
		return clothesDetail;
	}
	public void setClothesDetail(ClothesDetail clothesDetail) {
		this.clothesDetail = clothesDetail;
	}
	
}
