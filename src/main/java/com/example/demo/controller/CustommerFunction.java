package com.example.demo.controller.custommer;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.CarDao;
import com.example.demo.dao.CarItemDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.dao.ScreenDao;
import com.example.demo.module.Car;
import com.example.demo.module.CarItem;
import com.example.demo.module.Product;
import com.example.demo.module.Screen;

@RestController
public class CustommerFunction {
//  hàm lấy 3 sản phẩm ngẫu nhiên
	public List<Product> getRanProduct(ProductDao productDao) {
		List<Product> pList = new ArrayList<Product>();
		List<Product> products = productDao.findAll();
		Collections.shuffle(products);
		for (int i = 0; i < 3; i++) {
			pList.add(products.get(i));
		}
		return pList;
	}
//	hamf laays 10 sp ngau nhien (class: CustommerController.java,line 179)
	public List<Product> getRanProduct1(ProductDao productDao) {
		List<Product> pList = new ArrayList<Product>();
		List<Product> products = productDao.findAll();
		Collections.shuffle(products);
		for (int i = 0; i < 10; i++) {
			pList.add(products.get(i));
		}
		return pList;
	}

	public List<Product> getProductScreenRan(ProductDao prDao, ScreenDao sc, int id) {
		List<Product> products = new ArrayList<Product>();
		Screen screen = sc.findById(id).get();
		List<Product> products2 = prDao.findByScreen(screen);
		Collections.shuffle(products2);
		for (int i = 0; i < 10; i++) {
			products.add(products2.get(i));
		}
		return products;
	}

	public List<Product> searchCar(ProductDao productDao, CarDao carDao, CarItemDao carItemDao, String name) {
		List<Product> products = new ArrayList<Product>();
		if (carDao.findCarByName(name).size() >= 1) {
			List<Car> cars = carDao.findCarByName(name);
			for (Car car2 : cars) {
				List<CarItem> carItem = car2.getCarItems();
				for (CarItem carItem2 : carItem) {
					List<Product> products1 = productDao.findByCarItem(carItem2);
					for (Product product : products1) {
						products.add(product);
					}
				}

			}
		}
		if (carItemDao.findCarItemByName(name).size() >= 1) {
			List<CarItem> carItem = carItemDao.findCarItemByName(name);
			for (CarItem carItem2 : carItem) {
				List<Product> products1 = productDao.findByCarItem(carItem2);
				for (Product product : products1) {
					products.add(product);
				}
			}
		}
		if (productDao.findByLikeName(name).size() >= 1) {
			List<Product> products1 = productDao.findByLikeName(name);
			for (Product product : products1) {
				products.add(product);
			}
		}
		return products;
	}

	public Product findproduct(ProductDao productDao, String name, String screen) {
		Product product = new Product();
		List<Product> product123 = productDao.findByLikeName(name);
		for (Product product2 : product123) {
			if (product2.getScreen().getName().equalsIgnoreCase(screen)) {
				product = product2;
				break;
			}
		}
		return product;
	}

	public void sceenNavibar(ProductDao prDao, ScreenDao sc, Model model) {
		List<Product> screenS200 = getProductScreenRan(prDao, sc, 1);
		model.addAttribute("screens200", screenS200);

		List<Product> screenS400 = getProductScreenRan(prDao, sc, 2);
		model.addAttribute("screenS400", screenS400);

		List<Product> screenS600 = getProductScreenRan(prDao, sc, 3);
		model.addAttribute("screenS600", screenS600);

		List<Product> screenS800 = getProductScreenRan(prDao, sc, 4);
		model.addAttribute("screenS800", screenS800);
	}
}
