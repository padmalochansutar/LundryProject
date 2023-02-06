package com.example.demo.service;

import com.example.demo.entity.Register;

public interface RegisterService {

	Register registerData(Register register);

	Register loginData(Register register);

	Register passwordForgot(Register register);

}
