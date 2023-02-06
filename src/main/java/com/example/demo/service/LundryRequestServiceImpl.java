package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.LundryRequest;
import com.example.demo.repository.LundryRequestRepository;

@Service
public class LundryRequestServiceImpl implements LundryRequestService {
	@Autowired
    private LundryRequestRepository lundryRequestRepository;
	@Override
	public LundryRequest lundryDataSend(LundryRequest lundryRequest) {
	
		return lundryRequestRepository.save(lundryRequest);
	}
	@Override
	public Integer countbyName(Integer registerId) {
		System.out.println("count is:"+lundryRequestRepository.countByRegisterId(registerId));
		return lundryRequestRepository.countByRegisterId(registerId) ;
	}
	@Override
	public List<LundryRequest> findByData(Integer registerId) {

		return lundryRequestRepository.findByRegisterId(registerId);
	}

}
