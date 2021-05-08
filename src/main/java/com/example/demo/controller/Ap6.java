package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.CarDao;
import com.example.demo.dao.CarItemDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.dao.ProductDetailDao;
import com.example.demo.dao.ScreenDao;
import com.example.demo.module.Car;
import com.example.demo.module.Product;
import com.example.demo.module.ProductDetail;

@Controller
public class Ap6 {
	@Autowired
	CarDao carDao;
	@Autowired
	CarItemDao carItemDao;
	@Autowired
	ScreenDao screenDao;
	@Autowired
	ProductDetailDao productDetailDao;
	@Autowired
	ProductDao productDao;

//	product 
	@RequestMapping("/admin-product")
	public String sp12(Model model) {
		List<Product> products = productDao.findAll();
		model.addAttribute("products", products);
		return "admin_product";
	}

	@RequestMapping("/change-product")
	public String cp13(Model model, @RequestParam int id) {
		Product product = productDao.findById(id).get();
		model.addAttribute("product", product);
		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);
		return "change_product";
	}

	@RequestMapping("/change-product1")
	public String cp14(@RequestParam int id, @RequestParam String name, @RequestParam String imge,
			@RequestParam int price, @RequestParam int carItem, @RequestParam String screen, @RequestParam String des) {
		Product product = productDao.findById(id).get();
		ProductDetail prDetail = product.getProductDetail();
		prDetail.setDiscription(des);
		productDetailDao.save(prDetail);
		product.setName(name);
		product.setImg(imge);
		product.setPrice(price);
		product.setCarItem(carItemDao.findById(carItem).get());
		product.setScreen(screenDao.findByNameIgnoreCase(screen));
		product.setProductDetail(prDetail);
		productDao.save(product);
		return "redirect:/admin-product";
	}

	@RequestMapping("/add-product")
	public String ap15(Model model) {
		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);
		return "add_product";
	}

	@RequestMapping("/add-product-s")
	public String ap16(Model model, @RequestParam int id, @RequestParam String name,
			@RequestParam String imge, @RequestParam int price, @RequestParam int carItem, @RequestParam String screen,
			@RequestParam String des) {
		Product product = new Product();
		ProductDetail prDetail = new ProductDetail();
		prDetail.setDiscription(des);
		productDetailDao.save(prDetail);
		product.setName(name);
		product.setImg(imge);
		product.setPrice(price);
		product.setCarItem(carItemDao.findById(carItem).get());
		product.setScreen(screenDao.findByNameIgnoreCase(screen));
		product.setProductDetail(prDetail);
		productDao.save(product);
		return "redirect:/admin-product";
	}

}
