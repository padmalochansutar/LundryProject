package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.LundryRequest;
import com.example.demo.entity.Register;
import com.example.demo.service.LundryPriceService;
import com.example.demo.service.LundryRequestService;
import com.example.demo.service.RegisterService;

@Controller
public class MyController {
	private Integer box1 = 0;
	private Integer box2 = 0;
	private Integer box3 = 0;
	private Integer box4 = 0;
	@Autowired
	private HttpSession httpSession;
	@Autowired
	private RegisterService registerService;
	@Autowired
	private LundryPriceService lundryprice;
	@Autowired
	private LundryRequestService lundryRequestService;

	@GetMapping("/reg")
	public String registerPage() {
		return "userRegistration";
	}

	@GetMapping("/login")
	public String loginPage() {
		return "loginPage";
	}

	@GetMapping("/forgot")
	public String forgotPasswordPage() {
		return "forgotPassword";
	}

	@GetMapping("/lundry")
	public String lundryRequest(Model model) {
		model.addAttribute("name", httpSession.getAttribute("logname"));
		System.out.println(httpSession.getAttribute("logId"));
		model.addAttribute("userId", httpSession.getAttribute("logId"));
		return "lundryRequest";
	}

	@GetMapping("/request")
	public String requestStatus(Model model) {
		Register rgRegister = (Register) httpSession.getAttribute("dataList");
		List<LundryRequest> list = lundryRequestService.findByData(rgRegister.getRegisterId());
		System.out.println(list);
		model.addAttribute("name", httpSession.getAttribute("logname"));
		model.addAttribute("DataList", list);
		return "requestStatus";
	}

	@GetMapping("/dashboard")
	public String getDashboard(Model model) {

		model.addAttribute("box1", box1);
		model.addAttribute("box2", box2);
		model.addAttribute("box3", box3);
		model.addAttribute("box4", box4);
		model.addAttribute("name", httpSession.getAttribute("logname"));
		model.addAttribute("lundryList", lundryprice.getData());
		Register rgRegister = (Register) httpSession.getAttribute("dataList");

		model.addAttribute("box1", lundryRequestService.countbyName(rgRegister.getRegisterId()));

		return "getDashboard";
	}

	@PostMapping("/register")
	public String userRegister(@ModelAttribute Register register, Model model) {
		if (register.getEmail() != null) {
			Register registerData = registerService.registerData(register);
			if (registerData != null) {
				return "loginPage";
			} else {
				model.addAttribute("msg", "Username Already Registered!! ");
				return "userRegistration";
			}
		}
		// login page purpose..........
		else {
			Register loginData = registerService.loginData(register);
			System.out.println("the after data is:" + loginData);
			try {
				if (loginData.getName() != null && loginData.getPassword() != null) {
					System.out.println(loginData.getRegisterId());
					httpSession.setAttribute("logId", loginData.getRegisterId());
					httpSession.setAttribute("logname", loginData.getName());
					httpSession.setAttribute("dataList", loginData);
					model.addAttribute("name", loginData.getName());
					model.addAttribute("box1", box1);
					model.addAttribute("box2", box2);
					model.addAttribute("box3", box3);
					model.addAttribute("box4", box4);
					model.addAttribute("lundryList", lundryprice.getData());
					return "getDashboard";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("loginMsg", "please provide valid username and password");
		return "loginPage";

	}

	@PostMapping("/forgotPassword")
	public String forgotPassword(@ModelAttribute Register register, Model model) {
		Register passwordForgot = registerService.passwordForgot(register);
		model.addAttribute("forgotPasswordMsg", "password updated Successflly!!");
		return "forgotPassword";

	}

	@PostMapping("/lundryPostRequest")
	public String getLundryRequest(@ModelAttribute LundryRequest lundryRequest, Model model) {
		Register attribute = (Register) httpSession.getAttribute("dataList");
		System.out.println("data is:" + attribute);
		System.out.println(lundryRequest);
		lundryRequest.setStatus("pending");
		lundryRequest.setRegister(attribute);
		System.out.println(lundryRequest);
		LundryRequest lundryDataSend = lundryRequestService.lundryDataSend(lundryRequest);
		httpSession.setAttribute("lundryData", lundryDataSend);
		model.addAttribute("name", httpSession.getAttribute("logname"));
		return "lundryRequest";

	}

}
