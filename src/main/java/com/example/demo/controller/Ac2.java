package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.CarDao;
import com.example.demo.dao.CarItemDao;
import com.example.demo.dao.ScreenDao;
import com.example.demo.module.Car;
import com.example.demo.module.CarItem;
import com.example.demo.module.Screen;

@Controller
public class Ac2 {
	@Autowired
	CarDao carDao;
	@Autowired
	CarItemDao carItemDao;
	@Autowired
	ScreenDao screenDao;

	// car
	@RequestMapping("/admin-car")
	public String car1(Model model) {
		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);
		return "admin_car";
	}

	@RequestMapping("/admin-car-detail")
	public String car2(Model model, @RequestParam int id) {
		List<CarItem> carItem = carDao.findById(id).get().getCarItems();
		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);
		model.addAttribute("carItem", carItem);
		return "admin_car";
	}

	@RequestMapping("/changeCarItem")
	public String ci(Model model, @RequestParam int idCar, @RequestParam int id) {
		Car car = carDao.findById(idCar).get();
		CarItem carItem = carItemDao.findById(id).get();
		model.addAttribute("carItem", carItem);
		model.addAttribute("car", car);
		return "changeCarItem";
	}

	@RequestMapping("/add-car-item")
	public String ai(Model model) {
		List<Screen> screen = screenDao.findAll();
		model.addAttribute("screen", screen);
		return "add_car_item";
	}

	@RequestMapping("/add-car-itemS")
	public String ci1(@RequestParam int id, @RequestParam int carId, @RequestParam String imge,
			@RequestParam String name) {
		CarItem carItem = new CarItem();
		carItem.setId(id);
		carItem.setCar(carDao.findById(carId).get());
		carItem.setImge(imge);
		carItem.setName(name);
		carItemDao.save(carItem);
		return "redirect:/admin-car";
	}

	@RequestMapping("/add-car")
	public String ac1(Model model, @RequestParam String name) {
		Car tmp = carDao.findByName(name);
		if (tmp == null) {
			Car car = new Car();
			car.setName(name);
			carDao.save(car);
			return "admin_car";
		}
		return "admin_car";
	}

}
