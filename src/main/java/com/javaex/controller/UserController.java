package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/join")
	public String joinform() {
		System.out.println("join 진입");
		
		return "user/joinForm";
	}
	
	@RequestMapping(value="/joinsuccess")
	public String join(@ModelAttribute UserVo userVo) throws Exception {
		System.out.println("joinsuccess 진입");
		int result=userService.join(userVo);
		if (result==1) {
			return "user/joinSuccess";
		} else {
			return "user/joinForm";
		}
	}
	
	@RequestMapping(value="/login")
	public String loginform() {
		System.out.println("login 진입");
		return "user/loginForm";
	}
	
	@RequestMapping(value="/loginaction")
	public String login(Model model, @RequestParam("id") String id, @RequestParam("password") String password, HttpSession session) 
			throws Exception {
		System.out.println("loginaction 진입");
		UserVo authUser = userService.login(id, password);

		if (authUser == null) {
			System.out.println("로그인 실패");
			return "redirect:/user/login?result=fail";
		} else {
			System.out.println("로그인 성공");
			session.setAttribute("authUser", authUser);
			return "redirect:/";
		}
		/* 로그인 인터셉터 구현시 if문 필요없을듯??
		System.out.println("loginaction 진입");
		UserVo authUser = userService.login(id, password);
		
		model.addAttribute("authUser", authUser);

		return "redirect:/";*/
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		System.out.println("logout 진입");
		session.removeAttribute("authUser"); // 지정된 이름에 해당하는 객체를 세션에서 제거한다.
		session.invalidate();

		return "redirect:/";
	}
}
