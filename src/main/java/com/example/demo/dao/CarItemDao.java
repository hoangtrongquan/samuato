package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.module.Car;
import com.example.demo.module.CarItem;

@Repository
@Transactional
public interface CarItemDao extends JpaRepository<CarItem, Integer> {
	@Query(value = "SELECT * FROM car_item WHERE car_item.name like %?1% ", nativeQuery = true)
	List<CarItem> findCarItemByName(String name);
	List<CarItem> findByCar(Car car);
	@Query(value = "SELECT * FROM car_item WHERE car_item.name like %?1% ", nativeQuery = true)
	CarItem findByName(String name);
}
