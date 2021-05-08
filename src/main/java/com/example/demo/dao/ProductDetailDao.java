package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.module.ProductDetail;

public interface ProductDetailDao extends JpaRepository<ProductDetail, Integer> {
}
