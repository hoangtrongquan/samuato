package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.ScreenDao;
import com.example.demo.module.Screen;

@Controller
public class As7 {
	@Autowired
	ScreenDao screenDao;

	// screen
	@RequestMapping("/admin-screen")
	public String as12(Model model) {
		List<Screen> screen = screenDao.findAll();
		model.addAttribute("screen", screen);
		return "admin_screen";
	}

	@RequestMapping("/add-detail-screen")
	public String as13(Model model) {
		return "add_detail_screen";
	}

	@RequestMapping("/add-detail-screen-submit")
	public String as14(Model model, @RequestParam int id, @RequestParam String name,
			@RequestParam String img, @RequestParam String info, @RequestParam String des) {
		Screen screen = new Screen();
		screen.setName(name);
		if (img != null) {
			screen.setImg(img);
		}
		screen.setInfoScreen(info);
		screen.setDiscription(des);
		screenDao.save(screen);
		model.addAttribute("screen", screen);
		return "redirect:/admin-screen";
	}

	@RequestMapping("/change-detail-screen")
	public String as16(Model model, @RequestParam int id) {
		Screen screen = screenDao.findById(id).get();
		model.addAttribute("screen", screen);
		return "change_detail_screen";
	}

	@RequestMapping("/change-detail-screen-submit")
	public String cs17(Model model, @RequestParam int id, @RequestParam String name,
			@RequestParam String img, @RequestParam String info, @RequestParam String des) {
		Screen screen = screenDao.findById(id).get();
		screen.setId(id);
		screen.setName(name);
		if (img != null) {
			screen.setImg(img);
		}
		screen.setInfoScreen(info);
		screen.setDiscription(des);
		screenDao.save(screen);
		model.addAttribute("screen", screen);
		return "redirect:/admin-screen";
	}

}
