package com.flightReservationApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flightReservationApp.entity.User;
import com.flightReservationApp.repository.UserRepository;

@Controller
public class UserController {

	@Autowired

	private UserRepository userRepo;

	
	@RequestMapping("/showLoginPage")
	public String showLoginPage() {
		return "login/login";
	}
	

	@RequestMapping("/showReg")
	public String showReg() {
		return "login/showReg";
	}

	@RequestMapping("/saveReg")
	public String saveReg(@ModelAttribute("fromTheForm") User userdata) {
		userRepo.save(userdata);
		return "login/login";
	}
	
	@RequestMapping("/verifyLogin")
	public String verifyLogin(@RequestParam("emailid") String emailid,@RequestParam("password")String password,ModelMap modelMap) {
		User user =userRepo.findByEmail(emailid);
		if(user!=null) {
			
		
		if(user.getEmail().equals(emailid)&& user.getPassword().equals(password)){
			return "login/findFlights";
		}else {
			modelMap.addAttribute("error", "Invalid Username/Password");
			return "login/login";
		}
		}else {
			modelMap.addAttribute("error", "Invalid Username/Password");
			return "login/login";
		}
		
	}
	

}
