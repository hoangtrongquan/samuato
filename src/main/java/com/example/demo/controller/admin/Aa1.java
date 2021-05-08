package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.AgencyDao;
import com.example.demo.module.Agency;

@Controller
public class Aa1 {
	@Autowired
	AgencyDao agencyDao;

	@RequestMapping("/admin-agency")
	public String sh(Model model) {
		List<Agency> agency = agencyDao.findAll();
		model.addAttribute("agencys", agency);
		return "admin_agency";
	}

	@RequestMapping("/add-agency")
	public String ag() {
		return "add_agency";
	}

	@RequestMapping("/add-agencyS")
	public String as(Model model, @RequestParam String name, @RequestParam String address,
			@RequestParam String phone, @RequestParam String hrefAdd, @RequestParam String province) {
		Agency agency = new Agency();
		agency.setAddress(address);
		agency.setHrefAddress(hrefAdd);
		agency.setPhone(phone);
		agency.setProvince(province);
		agency.setShop(name);
		agencyDao.save(agency);
		return "redirect:/admin-agency";
	}

	@RequestMapping("/change-agency")
	public String ca(Model model, @RequestParam int id) {
		Agency agency = agencyDao.findById(id).get();
		model.addAttribute("agency", agency);
		return "change_agency";
	}

	@RequestMapping("/change-agencyS")
	public String ca1(Model model, @RequestParam int id, @RequestParam String name,
			@RequestParam String address, @RequestParam String phone, @RequestParam String hrefAdd,
			@RequestParam String province) {
		Agency agency = agencyDao.findById(id).get();
		agency.setAddress(address);
		agency.setHrefAddress(hrefAdd);
		agency.setPhone(phone);
		agency.setProvince(province);
		agency.setShop(name);
		agencyDao.save(agency);
		return "redirect:/admin-agency";
	}
}
