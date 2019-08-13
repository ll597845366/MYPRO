package com.tedu;

public class CGB1811 {

	private Integer id;
	private String name;
	public Integer getId() {
		return id;
	}
	
	public CGB1811(String name) {
		
		this.name=name;
		
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public CGB1811() {
		
		System.out.println("1811");
	}
}



