package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.UserService;

@Controller
public class ApiUserController {

	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("/user/api/idCheck")
	public boolean apiIdCheck(@RequestParam("id") String id) {
		return userService.apiIdCheck(id);
	}
	
	/*@ResponseBody
	@RequestMapping("/user/api/idPwCheck")
	public boolean apiIdPwCheck(@RequestParam("id") String id) {
		return userService.apiIdPwCheck(id);
	}*/
	
}
