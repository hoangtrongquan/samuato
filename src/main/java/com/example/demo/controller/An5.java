package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.NewsDao;
import com.example.demo.module.News;

@Controller
public class An5 {
	@Autowired
	NewsDao newsDao;

//	news
	@RequestMapping("/show-news")
	public String sn1(Model model) {
		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		return "admin_news";
	}

	@RequestMapping("/change-news")
	public String cn1(Model model, @RequestParam int id) {
		News news = newsDao.findById(id).get();
		model.addAttribute("news", news);
		return "change_news";
	}

	@RequestMapping("/change-news1")
	public String cn2(@RequestParam int id, @RequestParam String name, @RequestParam String des,
			@RequestParam String img, @RequestParam String author) {
		News news = newsDao.findById(id).get();
		news.setTitle(name);
		news.setDiscription(des);
		news.setImg(img);
		news.setAuthor(author);
		newsDao.save(news);
		return "redirect:/show-news";
	}

	@RequestMapping("/add-news")
	public String cn3() {
		return "add_news";
	}

	@RequestMapping("/add-news1")
	public String an4(@RequestParam int id, @RequestParam String name, @RequestParam String des,
			@RequestParam String img, @RequestParam String author) {
		News news = new News();
		news.setTitle(name);
		news.setImg(img);
		news.setDiscription(des);
		news.setAuthor(author);
		newsDao.save(news);
		return "redirect:/show-news";
	}

}
