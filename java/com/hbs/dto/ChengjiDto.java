package com.hbs.dto;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;

//@Data
public class ChengjiDto {
	@NotEmpty(message="name empty")
	int id ;
	
	@Min(1) @Max(100)
	
	int sid;
	String name;
	int chengji;
	
	public ChengjiDto() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getChengji() {
		return chengji;
	}

	public void setChengji(int chengji) {
		this.chengji = chengji;
	}

	@Override
	public String toString() {
		return "ChengjiDto [id=" + id + ", sid=" + sid + ", name=" + name + ", chengji=" + chengji + "]";
	}

	public ChengjiDto(@NotEmpty int id, @NotEmpty int sid, String name, int chengji) {
		super();
		this.id = id;
		this.sid = sid;
		this.name = name;
		this.chengji = chengji;
	}

	
}





