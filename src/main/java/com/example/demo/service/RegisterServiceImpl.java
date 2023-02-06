package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Register;
import com.example.demo.repository.RegisterRepository;

@Service
public class RegisterServiceImpl implements RegisterService {
	@Autowired
	private RegisterRepository registerRepository;

	@Override
	public Register registerData(Register register) {
		Register findByName = registerRepository.findByName(register.getName());
		//System.out.println(findByName);
		if (findByName == null) {
			Register reg = registerRepository.save(register);
			return reg;
		} else {
			return null;
		}
	}

	@Override
	public Register loginData(Register register) {
		Register findByNameAndPassword = registerRepository.findByNameAndPassword(register.getName(),register.getPassword());
		System.out.println("the login data is:"+findByNameAndPassword);
		return findByNameAndPassword;
		
	}

	@Override
	public Register passwordForgot(Register register) {
		Register findByEmail = registerRepository.findByEmail(register.getEmail());
		findByEmail.setPassword(register.getPassword());
		return registerRepository.save(findByEmail);
		
	}

}
