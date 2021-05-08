package com.example.demo.module;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ProductDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@OneToOne
	Product Product;
	String discription;
	String inoProduct;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Product getProduct() {
		return Product;
	}
	public void setProduct(Product product) {
		Product = product;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public String getInoProduct() {
		return inoProduct;
	}
	public void setInoProduct(String inoProduct) {
		this.inoProduct = inoProduct;
	}
	@Override
	public String toString() {
		return "ProductDetail [id=" + id + ", Product=" + Product + ", discription=" + discription + ", inoProduct="
				+ inoProduct + "]";
	}
}
