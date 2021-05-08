package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.CarDao;
import com.example.demo.module.Car;

@Controller
public class Ac3 {
	@Autowired
	CarDao carDao;

	@RequestMapping("/admin")
	public String ah1(Model model) {
		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);
		return "admin_index";
	}

	@RequestMapping("/admin1")
	public String n(Model model, @RequestParam int id) {
		return "navication";
	}
}
