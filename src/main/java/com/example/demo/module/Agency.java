package com.example.demo.module;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Agency {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String shop;
	String address;
	String phone;
	String hrefAddress;
	String province;

	public int getId() {
		return id;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getShop() {
		return shop;
	}

	public void setShop(String shop) {
		this.shop = shop;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getHrefAddress() {
		return hrefAddress;
	}

	public void setHrefAddress(String hrefAddress) {
		this.hrefAddress = hrefAddress;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	@Override
	public String toString() {
		return "Agency [id=" + id + ", shop=" + shop + ", address=" + address + ", phone=" + phone + ", hrefAddress="
				+ hrefAddress + ", province=" + province + "]";
	}

	

}
