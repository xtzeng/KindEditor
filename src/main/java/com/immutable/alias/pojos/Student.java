package com.immutable.alias.pojos;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student {

	private int id;
	private String name;
	private String sex;
	
	
	
	public Student() {
		super();
	}
	
	@Id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
}
