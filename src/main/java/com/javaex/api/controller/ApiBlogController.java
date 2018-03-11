package com.javaex.api.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.BlogService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/{id}/admin")
public class ApiBlogController { //pathvariable 안해줘도 돌아가는데 해줘야 하는 이유는?

	@Autowired
	private BlogService blogService;
	
	@ResponseBody
	@RequestMapping("/category/apiList")
	public List<CategoryVo> apiList(@PathVariable String id, HttpSession session) {
		System.out.println("apiList 진입");
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		List<CategoryVo> categoryList=blogService.apiCategoryList(authUser.getUserNo()); //계속 userNo로 식별
		System.out.println(categoryList);
		return categoryList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/category/apiAddCate")
	public CategoryVo apiAddCate(@PathVariable String id, @RequestBody CategoryVo categoryVo, HttpSession session) {
		System.out.println(categoryVo); //json으로 넘긴 데이터를 vo에 담아 가져옴. vo로 넘긴 이름과 requestbody로 받는 이름이 달라도 됨.
		System.out.println(id); //id 가져올 수 있음.
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		categoryVo.setUserNo(authUser.getUserNo());
		System.out.println(categoryVo);
		categoryVo = blogService.apiAddList(categoryVo);
		System.out.println(categoryVo);
		return categoryVo;
	}
	
	@ResponseBody
	@RequestMapping(value = "/category/apiDeleteCate")
	public int apiDeleteCate(@PathVariable String id, @RequestParam int cateNo) {
		System.out.println("apiDeleteList 진입");
		System.out.println(cateNo); //클릭한 cateNo번호만 출력됨.
		int count = blogService.apiDeleteCate(cateNo);
		return count;
	}
	
}
