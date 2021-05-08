package com.example.demo.controller.custommer;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.AgencyDao;
import com.example.demo.dao.CarDao;
import com.example.demo.dao.CarItemDao;
import com.example.demo.dao.GuaranteeDao;
import com.example.demo.dao.NewsDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.dao.ScreenDao;
import com.example.demo.dao.UserDao;
import com.example.demo.module.Agency;
import com.example.demo.module.Car;
import com.example.demo.module.CarItem;
import com.example.demo.module.Guarantee;
import com.example.demo.module.News;
import com.example.demo.module.Product;
import com.example.demo.module.Screen;
import com.example.demo.module.User;

@Controller
public class CustomerController {
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
	CustommerFunction cf = new CustommerFunction();

	@RequestMapping("/")
	public String home(Model model) {
		List<Car> cars = carDao.findAll();
		List<Screen> screens = screenDao.findAll();
		List<Product> products = productDao.findAll();
		model.addAttribute("products", products);

		cf.sceenNavibar(productDao, screenDao, model);

		model.addAttribute("cars", cars);
		model.addAttribute("s", screens);

		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);
		return "index";
	}

//   detail
	@RequestMapping("/detail")
	public String detail(Model model, @RequestParam String name, @RequestParam String screen) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

		Product product = cf.findproduct(productDao, name, screen);
		model.addAttribute("product", product);

		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);

		List<Screen> screens = screenDao.findAll();
		model.addAttribute("s", screens);
//		Sản phẩm tương tự
		List<Product> products = cf.getProductScreenRan(productDao,screenDao,screenDao.findByName(screen).getId());
//		System.out.println(products);
		List<Product> products1 = products.subList(0, 3);
		model.addAttribute("products1", products1);

		List<Product> products2 = products.subList(7, 10);
		model.addAttribute("products2", products2);

		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);
		model.addAttribute("titleTab", name);
		return "detail";
	}

	// product list
	@RequestMapping("/product-list")
	public String producs(Model model, @RequestParam String name) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

		List<CarItem> carItems = carItemDao.findCarItemByName(name);
		List<Product> products = new ArrayList<Product>();
		for (CarItem carItem : carItems) {
			List<Product> products1 = productDao.findByCarItem(carItem);
			for (Product product : products1) {
				products.add(product);
			}
		}
		model.addAttribute("products", products);
		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);
		List<Screen> screens = screenDao.findAll();
		model.addAttribute("s", screens);

		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);

		model.addAttribute("titleTab", name);
		return "product_list";
	}

//	car product
	@RequestMapping("/product-list-car")
	public String producs2(Model model, @RequestParam String name) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

		List<Car> cars = carDao.findCarByName(name);
		List<Product> products = new ArrayList<Product>();
		for (Car car2 : cars) {
			List<CarItem> carItem = car2.getCarItems();
			for (CarItem carItem2 : carItem) {
				List<Product> products1 = productDao.findByCarItem(carItem2);
				for (Product product : products1) {
					products.add(product);
				}
			}

		}
		model.addAttribute("products", products);
		model.addAttribute("titleTab", name);
		return "product_list";
	}
// 	screen product list

	@RequestMapping("/product-list-screen")
	public String producs1(Model model, @RequestParam String name) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

		Screen screen = screenDao.findByNameIgnoreCase(name);
		List<Product> products = productDao.findByScreen(screen);
		model.addAttribute("products", products);
		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);
		List<Screen> screens = screenDao.findAll();
		model.addAttribute("s", screens);
		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);
		model.addAttribute("titleTab", name);
		return "product_list";
	}

//	news
	@RequestMapping("/page-news-full")
	public String pageNewsfull(Model model, @RequestParam String title) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

//		Sản phẩm tương tự
		List<Product> products = cf.getRanProduct1(productDao);
		List<Product> products1 = products.subList(0, 3);
		model.addAttribute("products1", products1);
		List<Product> products2 = products.subList(7, 10);
		model.addAttribute("products2", products2);
		
		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);
		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);
		News news3 = newsDao.findByTitle(title);
		model.addAttribute("news3", news3);

		return "page_news_full";
	}

	@RequestMapping("/news-list")
	public String showNews(Model model) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);

		List<News> newsList = newsDao.findNewsLastAll();
		model.addAttribute("newsList", newsList);

		List<Product> products = cf.getRanProduct(productDao);
		model.addAttribute("product", products);

		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);

		return "news_list";
	}

//	guarantee

	@RequestMapping("/guarantee")
	public String showG(Model model) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);
		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		return "guarantee";
	}

	@RequestMapping("/guarantee-customer")
	public String checkGuarantee122423(Model model, @RequestParam String phone) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);

		User user = userDao.findByPhone(phone);
		List<Guarantee> guarantees = guaranteeDao.findByUser(user.getId());
		model.addAttribute("guarantees", guarantees);
		return "guarantee";
	}

// agency
	@RequestMapping("/agency")
	public String quickView(Model model) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);

		List<Product> products = cf.getRanProduct(productDao);
		model.addAttribute("product", products);

		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);

		List<Agency> agencies = agencydao.findAll();
		model.addAttribute("agencys", agencies);
		
		return "agency";
	}

//	search
	@RequestMapping("/search")
	public String search(Model model, @RequestParam String name) {
//		navibar screen
		cf.sceenNavibar(productDao, screenDao, model);

		List<Product> products2 = cf.searchCar(productDao, carDao, carItemDao, name);
		model.addAttribute("products", products2);
		List<Car> cars = carDao.findAll();
		model.addAttribute("cars", cars);
		List<Screen> screens = screenDao.findAll();
		model.addAttribute("s", screens);

		List<News> news = newsDao.findAll();
		model.addAttribute("news", news);
		News news2 = newsDao.findNewsLast();
		model.addAttribute("news2", news2);
		model.addAttribute("search", name);
		return "search";
	}

}
