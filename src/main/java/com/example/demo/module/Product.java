package com.example.demo.module;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String name;
	String img;
	int price;
	@ManyToOne
	Screen screen;
	@ManyToOne
	@JoinColumn(name = "car_item_id")
	CarItem carItem;
	@OneToMany(fetch = FetchType.EAGER)
	List<Guarantee> guarantee;
	@OneToOne
	ProductDetail productDetail;

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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Screen getScreen() {
		return screen;
	}

	public void setScreen(Screen screen) {
		this.screen = screen;
	}

	public CarItem getCarItem() {
		return carItem;
	}

	public void setCarItem(CarItem carItem) {
		this.carItem = carItem;
	}

	public List<Guarantee> getGuarantee() {
		return guarantee;
	}

	public void setGuarantee(List<Guarantee> guarantee) {
		this.guarantee = guarantee;
	}

	public ProductDetail getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(ProductDetail productDetail) {
		this.productDetail = productDetail;
	}

}
