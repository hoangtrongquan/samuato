package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.module.News;

@Repository
@Transactional
public interface NewsDao extends JpaRepository<News, Integer> {
	@Query(value = "SELECT * FROM `news` ORDER BY `news`.`id` DESC LIMIT 1", nativeQuery = true)
	News findNewsLast();
	@Query(value = "SELECT * FROM `news` ORDER BY `news`.`id` DESC", nativeQuery = true)
	List<News> findNewsLastAll();
	@Query(value = "SELECT * FROM news WHERE title like %?1% ", nativeQuery = true)
	public List<News> findByLikeName(String name);
	public News findByTitle(String title);
}
