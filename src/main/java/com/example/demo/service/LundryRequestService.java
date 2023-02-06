package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.LundryRequest;



public interface LundryRequestService {

	LundryRequest lundryDataSend(LundryRequest lundryRequest);

	Integer countbyName(Integer registerId);

	List<LundryRequest> findByData(Integer registerId);

}
