package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.LundryPrice;
import com.example.demo.repository.LundryPriceRepository;



@Service
public class LundryPriceServiceImpl implements LundryPriceService {
      @Autowired
      private LundryPriceRepository lundryPriceRepository;
	@Override
	public List<LundryPrice> getData() {
		
		return lundryPriceRepository.findAll();
	}

}
