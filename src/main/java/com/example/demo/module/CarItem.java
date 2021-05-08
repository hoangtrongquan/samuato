package com.example.demo.module;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.CascadeType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class CarItem {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String name;
	String imge;
	@OneToMany(mappedBy = "carItem", cascade = CascadeType.ALL)
	List<Product> products;
	@ManyToOne
	@JoinColumn(name = "car_id")
	Car car;
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

	public String getImge() {
		return imge;
	}

	public void setImge(String imge) {
		this.imge = imge;
	}

//	public List<Product> getProducts() {
//		return products;
//	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public int getCar() {
		return car.id;
	}

	public void setCar(Car car) {
		this.car = car;
	}


}
