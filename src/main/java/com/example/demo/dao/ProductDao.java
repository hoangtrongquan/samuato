package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.module.CarItem;
import com.example.demo.module.Product;
import com.example.demo.module.Screen;

@Repository
@Transactional
public interface ProductDao extends JpaRepository<Product, Integer>{
//	@Query(value = "SELECT * FROM `product` WHERE `car_item_id`= ?1", nativeQuery = true)
//	public List<Product> findByCarItem(int id);
	
	public List<Product> findByScreen(Screen screen);
	@Query(value = "SELECT * FROM product WHERE name like %?1% ", nativeQuery = true)
	public List<Product> findByLikeName(String name);
	public Product findByName(String name);
	public List<Product> findByCarItem(CarItem car_item);
	
}
