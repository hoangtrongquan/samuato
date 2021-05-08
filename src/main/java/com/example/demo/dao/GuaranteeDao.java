package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.module.Guarantee;

@Repository
@Transactional
public interface GuaranteeDao extends JpaRepository<Guarantee, Integer> {
	@Query(value = "SELECT * FROM `guarantee` WHERE `user_id` = ?1", nativeQuery = true)
	List<Guarantee> findByUser(int id);
}
