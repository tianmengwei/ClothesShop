package com.bear.clothesonline.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="clothesdetail")
public class ClothesDetail {
	private int id;
	private String clothesname;
	private int clothesprice;
	private String introduce;
	private String size;
	private int clothescount;
	private String img1;
	private String img2;
	private String img3;
	private String img4;

	private Clothes clothes;
	
	@Id
	@GeneratedValue(generator="foreign1")
	@GenericGenerator(name="foreign1",strategy="foreign",parameters= {@Parameter(name="property",value="clothes")})
	@Column(name="clothesdetailsid")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClothesname() {
		return clothesname;
	}
	public void setClothesname(String clothesname) {
		this.clothesname = clothesname;
	}
	public int getClothesprice() {
		return clothesprice;
	}
	public void setClothesprice(int clothesprice) {
		this.clothesprice = clothesprice;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	
	public int getClothescount() {
		return clothescount;
	}
	public void setClothescount(int clothescount) {
		this.clothescount = clothescount;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}

	public void setImg4(String img4) {
		this.img4 = img4;
	}
	
	@OneToOne(mappedBy="clothesDetail")
	public Clothes getClothes() {
		return clothes;
	}
	public void setClothes(Clothes clothes) {
		this.clothes = clothes;
	}
}
