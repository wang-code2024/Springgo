package com.hbs.dto;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;

//@Data
public class StudentDto {
	@NotEmpty(message="name empty")
	String name;
	
	@Min(1) @Max(100)
	int age;
	
	String sex;
	String clas;
	String addr;
	
	public StudentDto() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}
	public StudentDto(@NotEmpty String name, @NotEmpty int age, String sex, String clas, String addr) {
		super();
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.clas = clas;
		this.addr = addr;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getClas() {
		return clas;
	}
	public void setClas(String clas) {
		this.clas = clas;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	@Override
	public String toString() {
		return "StudentDto [name=" + name + ", age=" + age + ", sex=" + sex + ", clas=" + clas + ", addr=" + addr + "]";
	}

}
