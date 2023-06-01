package com.laundry.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.laundry.entity.Price;

@Repository
public interface PriceRepository extends JpaRepository<Price, Integer> {

	Price findByPriceId(int i);

}
