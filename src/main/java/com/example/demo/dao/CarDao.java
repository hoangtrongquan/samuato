package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.module.Car;

@Repository
@Transactional
public interface CarDao extends JpaRepository<Car, Integer> {
	Car findByName(String name);

	@Query(value = "SELECT * FROM car WHERE car.name like %?1% ", nativeQuery = true)
	List<Car> findCarByName(String name);
}
