package com.example.demo.module;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Guarantee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	LocalDate timeBegin;
	Date timeEnd;
	@ManyToOne
	Product product;
	@ManyToOne
	User user;
	String note;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDate getTimeBegin() {
		return timeBegin;
	}

	public void setTimeBegin(LocalDate localDate) {
		this.timeBegin = localDate;
	}

	public Date getTimeEnd() {
		return timeEnd;
	}

	public void setTimeEnd(Date timeEnd) {
		this.timeEnd = timeEnd;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "Guarantee [id=" + id + ", timeBegin=" + timeBegin + ", timeEnd=" + timeEnd + ", product=" + product
				+ ", user=" + user + ", note=" + note + "]";
	}

}
