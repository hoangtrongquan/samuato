package com.example.demo.controller;

import com.example.demo.dao.*;
import com.example.demo.module.Car;
import com.example.demo.module.CarItem;
import com.example.demo.module.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class Test {
    @Autowired
    CarDao carDao;
    @Autowired
    CarItemDao cardItemDao;
    @Autowired
    ProductDao productDao;
    @Autowired
    NewsDao newsDao;
    @Autowired
    AgencyDao agencyDao;

    @RequestMapping("test-final")
    public void tetchoi(){
        List<Product> products = productDao.findAll();
        List<CarItem> carItems = cardItemDao.findAll();
        ArrayList<String> arrayList1 = new ArrayList<>();
        for (int i = 0; i < carItems.size(); i++) {
            for (int j = 0; j < products.size(); j++) {
                if(products.get(j).getCarItem().getId() == carItems.get(i).getId()){
                    if(!arrayList1.contains(carItems.get(i).getName())){
                        arrayList1.add(carItems.get(i).getName());
                    }
                }
            }
        }
        for (int i = 0; i < carItems.size(); i++) {
            if(!arrayList1.contains(carItems.get(i).getName())){
                System.out.println(carItems.get(i).getName());
            }
        }

    }
    @RequestMapping("/test123")
    public List<Car> test123(){
        return carDao.findAll();
    }
}
