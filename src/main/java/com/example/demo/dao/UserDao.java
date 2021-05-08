package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.module.User;

public interface UserDao extends JpaRepository<User, Integer>{
	User findByPhone(String phone);
	User findByName(String name);
}
