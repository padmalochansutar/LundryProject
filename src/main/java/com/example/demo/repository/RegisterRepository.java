package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Register;

public interface RegisterRepository extends JpaRepository<Register, Integer> {

	Register findByName(String name);

	Register findByNameAndPassword(String name, String password);

	Register findByEmail(String email);

}
