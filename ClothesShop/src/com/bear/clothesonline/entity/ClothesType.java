package com.bear.clothesonline.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="clothesttype")
public class ClothesType {
	private Integer clothestypeid;
	private String name;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getClothestypeid() {
		return clothestypeid;
	}
	public void setClothestypeid(Integer clothestypeid) {
		this.clothestypeid = clothestypeid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
