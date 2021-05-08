package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.UserDao;
import com.example.demo.module.User;

@Controller
public class Au8 {
	@Autowired
	UserDao userDao;

	@RequestMapping("/admin-user")
	public String su1(Model model) {
		List<User> user = userDao.findAll();
		model.addAttribute("user", user);
		return "admin_user";
	}

	@RequestMapping("/add-user")
	public String su2() {
		return "add_user";
	}

	@RequestMapping("/add-user1")
	public String su3(@RequestParam int id, @RequestParam String name, @RequestParam String phone,
			@RequestParam String address, @RequestParam String note) {
		User user = new User();
		user.setRole("CUSTOMMER");
		user.setName(name);
		user.setPhone(phone);
		user.setAddress(address);
		user.setNote(note);
		userDao.save(user);
		return "redirect:/admin-user";
	}

	@RequestMapping("/change-user")
	public String su4(Model model, @RequestParam int id) {
		User user = userDao.findById(id).get();
		model.addAttribute("user", user);
		return "change_user";
	}

	@RequestMapping("/change-user1")
	public String su7(@RequestParam int id, @RequestParam String name, @RequestParam String phone,
			@RequestParam String address, @RequestParam String note) {
		User user = userDao.findById(id).get();
		user.setRole("CUSTOMMER");
		user.setName(name);
		user.setPhone(phone);
		user.setAddress(address);
		user.setNote(note);
		userDao.save(user);
		return "redirect:/admin-user";
	}

}
