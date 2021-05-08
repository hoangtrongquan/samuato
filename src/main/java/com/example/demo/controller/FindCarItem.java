package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.AgencyDao;
import com.example.demo.dao.CarDao;
import com.example.demo.dao.CarItemDao;
import com.example.demo.dao.GuaranteeDao;
import com.example.demo.dao.NewsDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.dao.ScreenDao;
import com.example.demo.dao.UserDao;
import com.example.demo.module.CarItem;
import com.example.demo.module.Product;

@RestController
public class FindCarItem {
	@Autowired
	CarDao carDao;
	@Autowired
	CarItemDao carItemDao;
	@Autowired
	ScreenDao screenDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	NewsDao newsDao;
	@Autowired
	GuaranteeDao guaranteeDao;
	@Autowired
	UserDao userDao;
	@Autowired
	AgencyDao agencydao;

	@RequestMapping("/findProductNull")
	public ArrayList<Integer> i(Model model) {
		List<Product> products = productDao.findByScreen(screenDao.findById(1).get());
		List<CarItem> carItems = carItemDao.findAll();
		ArrayList<Integer> arrayList = new ArrayList<Integer>();
		for (Product product : products) {
			if(!arrayList.contains(product.getCarItem().getId())) {
				arrayList.add(product.getCarItem().getId());
			}
		}
		int tmp= 0;
		ArrayList<Integer> arrayList1 = new ArrayList<Integer>();
		for (CarItem carItem : carItems) {
			if(!arrayList.contains(carItem.getId())) {
				arrayList1.add(carItem.getId());
				tmp++;
				System.out.println(tmp+" : "+carItem.getName());
			}
		}
		return arrayList1;
	}
}
