package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.module.Agency;

public interface AgencyDao extends JpaRepository<Agency, Integer> {
	
}
