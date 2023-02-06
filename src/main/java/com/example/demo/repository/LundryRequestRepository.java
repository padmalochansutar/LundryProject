package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entity.LundryRequest;

public interface LundryRequestRepository extends JpaRepository<LundryRequest, Integer> {
    @Query(" select count(L) from LundryRequest L where register.registerId=:registerId")
	Integer countByRegisterId(Integer registerId);
    @Query("from LundryRequest L where register.registerId=:registerId ")
	List<LundryRequest> findByRegisterId(Integer registerId);

}
