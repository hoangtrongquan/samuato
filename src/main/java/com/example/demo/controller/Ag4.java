package com.example.demo.controller.admin;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.GuaranteeDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.dao.UserDao;
import com.example.demo.module.Guarantee;
import com.example.demo.module.User;

@Controller
public class Ag4 {
	@Autowired
	UserDao userDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	GuaranteeDao guaranteeDao;
	@RequestMapping("/admin-guarantee")
	public String sg(Model model) {
		List<Guarantee> guarantees = guaranteeDao.findAll();
		model.addAttribute("guarantees", guarantees);
		return "admin_guarantee";
	}

	@RequestMapping("/add-guarantee")
	public String ag12() {
		return "add_guarantee";
	}

	@RequestMapping("/create-guarantee")
	public String ng1(@RequestParam Date timeend, @RequestParam String name, @RequestParam String phone,
			@RequestParam int idProduct, @RequestParam String note) {
		Guarantee guarantee = new Guarantee();
		guarantee.setNote(note);
		guarantee.setProduct(productDao.findById(idProduct).get());
		guarantee.setUser(aug(name, phone));
		guarantee.setTimeEnd(timeend);
		guarantee.setTimeBegin(LocalDate.now());
		guaranteeDao.save(guarantee);
		return "redirect:/admin-guarantee";
	}

	@RequestMapping("/Change-guarantee")
	public String cg2(Model model, @RequestParam int id) {
		Guarantee guarantee = guaranteeDao.findById(id).get();
		model.addAttribute("guarantee", guarantee);

		return "change_guarantee";
	}

	@RequestMapping("/Change-guarantee-s")
	public String cg3(@RequestParam int id, @RequestParam Date timeend, @RequestParam String name,
			@RequestParam String phone, @RequestParam int idProduct, @RequestParam String note) {
		Guarantee guarantee = guaranteeDao.findById(id).get();
		guarantee.setNote(note);
		guarantee.setProduct(productDao.findById(idProduct).get());
		guarantee.setUser(aug(name, phone));
		guarantee.setTimeEnd(timeend);
		guarantee.setTimeBegin(LocalDate.now());
		guaranteeDao.save(guarantee);
		return "redirect:/admin-guarantee";
	}
	public User aug(String name, String phone) {
		if (userDao.findByName(name) == null) {
			User user = new User();
			user.setName(name);
			user.setPhone(phone);
			user.setRole("CUSTOMMER");
			userDao.save(user);
		}
		User user1 = userDao.findByName(name);
		return user1;
	}

}
