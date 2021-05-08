package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.module.Screen;


public interface ScreenDao extends JpaRepository<Screen, Integer>{
	Screen findByNameIgnoreCase(String name);
	Screen findByName(String name);
	
}
