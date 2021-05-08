package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.AgencyDao;
import com.example.demo.dao.CarDao;
import com.example.demo.dao.CarItemDao;
import com.example.demo.dao.NewsDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.module.Agency;
import com.example.demo.module.Car;
import com.example.demo.module.CarItem;
import com.example.demo.module.News;
import com.example.demo.module.Product;

@RestController
public class APIController {

	@Autowired
	CarDao carDao;
	@Autowired
	CarItemDao cardItemDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	NewsDao newsDao;
	@Autowired
	AgencyDao agencyDao;

	@RequestMapping("/product-test123")
	public Product b( @RequestParam String name, @RequestParam String screen) {
		Product product = a(name, screen);
		System.out.println(product);
		return product;
	}
	public Product a(String name, String screen) {
		Product product = new Product();
		List<Product> product123 = productDao.findByLikeName(name);
		for (Product product2 : product123) {
			System.out.println(product2.getName());
			System.out.println(product2.getScreen().getName());
			if (product2.getScreen().getName().equalsIgnoreCase(screen)) {
				product = product2;
			}
		}
		return product;
	}
	@RequestMapping("/getcaritem")
	public List<CarItem>  c(@RequestParam int id) {
		Car car = carDao.findById(id).get();
		List<CarItem> items = cardItemDao.findByCar(car);
		return items;
	}


	@RequestMapping("/changecar")
	public Car d(Model model, @RequestParam int id, @RequestParam String name) {
		Car car = carDao.findById(id).get();
		car.setName(name);
		carDao.save(car);
		return car;
	}

	@RequestMapping("/changeCarItemS")
	public String e(@RequestParam int id, @RequestParam int carId, @RequestParam String imge,
			@RequestParam String name) {
		CarItem carItem = new CarItem();
		carItem.setId(id);
		carItem.setCar(carDao.findById(carId).get());
		carItem.setImge(imge);
		carItem.setName(name);
		cardItemDao.save(carItem);
		return "changeCarItem";
	}

	@RequestMapping("/deleteCar")
	public void f(@RequestParam int id) {
		carDao.deleteById(id);
	}

	@RequestMapping("/deleteCarItem")
	public void g(@RequestParam int id) {
		cardItemDao.deleteById(id);
	}
	@RequestMapping("/testAgency")
	public List<Agency> h() {
		return agencyDao.findAll();
	}
}
