package com.example.demo.module;

import java.util.List;

import javax.persistence.*;

@Entity
public class Car {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String name;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "car", cascade = CascadeType.ALL)
	List<CarItem> carItems;

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

	public List<CarItem> getCarItems() {
		return carItems;
	}

	public void setCarItems(List<CarItem> carItems) {
		this.carItems = carItems;
	}

	@Override
	public String toString() {
		return "Car [id=" + id + ", name=" + name + ", carItems=" + carItems + "]";
	}

}
