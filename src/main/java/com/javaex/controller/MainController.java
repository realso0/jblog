package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.BlogService;
import com.javaex.service.UserService;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.PostVo;

@Controller
public class MainController {

	@Autowired
	private BlogService blogService;
	@Autowired
	private UserService userService;
	
	//메인
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main() {
		System.out.println("main 진입완료");
		return "main/index";
	}
	
	//블로그 메인
	@RequestMapping(value="/{id}")
	public String blogMain(@PathVariable String id, Model model,
							@RequestParam(value="selectedPostNo", required=false) String selectedPostNo,
							@RequestParam(value="selectedCateNo", required=false) String selectedCateNo) { //blog-main.jsp로도 다시 select하여 뿌려줘야 함.
		System.out.println("blogMain 진입완료"); 

		int userNo=userService.getUserNo(id); //id별로 접속 가능하도록 하기

		BlogVo blogVo=blogService.selectMainImg(userNo); //블로그 제목,이미지 끌어오기

		List<CategoryVo> categoryList=blogService.apiCategoryList(userNo); //카테고리 뿌려주기
		
		List<PostVo> postList = blogService.getPostList(userNo, selectedCateNo, selectedPostNo);
		//블로그 메인 아래부분 post된 리스트 뿌려주기, postList 안에는 post정보 전부 들어있음.

		PostVo postVo = blogService.getPostTitleContent(userNo, selectedCateNo, selectedPostNo); 
		
		model.addAttribute("postVo", postVo);
		model.addAttribute("eList", postList);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("blogVo", blogVo);
		model.addAttribute("ctrl","\r\n");
		return "blog/blog-main";
	}
	
}
