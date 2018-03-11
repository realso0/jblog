package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.BlogService;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.PostVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/{id}/admin")
public class BlogController {

	@Autowired
	private BlogService blogService;

	@RequestMapping("/basic")
	public String basic(@PathVariable String id, Model model, HttpSession session) {
		System.out.println("admin/basic 진입");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		BlogVo blogVo = blogService.selectMainImg(userNo);
		model.addAttribute("blogVo", blogVo);

		if (authUser.getId().equals(id)) {
			System.out.println(blogVo.toString());
			return "blog/admin/blog-admin-basic";
		}
		return "redirect:/" + id;
	}

	@RequestMapping("/upload")
	public String upload(@PathVariable String id, @RequestParam("file") MultipartFile file, // file의 자료형에 주의
			@ModelAttribute BlogVo blogVo, HttpSession session) {
		System.out.println(file.toString()); // 일단 여기까지 하면, 무언가 주소를 찍음.(첨부파일을 가져온 것임)
		UserVo authUser = (UserVo) session.getAttribute("authUser"); // 세션은 id,password를 매개값으로 받아, 전부 출력 가능함.
		blogVo.setUserNo(authUser.getUserNo());

		System.out.println(blogVo.toString());
		blogService.restore(file, blogVo);

		// String url="upload/"+saveName; //하드에 저장될 위치
		// System.out.println(url);
		return "redirect:/" + id + "/admin/basic"; // redirect시 값을 넘길 수 없을 뿐만 아니라, 로그인시 /basic 창에서 바로 값을 얻어와야 함.
	}

	@RequestMapping("/category")
	public String category(@PathVariable String id, HttpSession session, Model model) {
		System.out.println("category 진입");
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser.getId().equals(id)) {
			BlogVo blogVo = blogService.selectMainImg(authUser.getUserNo());
			model.addAttribute("blogVo", blogVo);
			return "blog/admin/blog-admin-cate";
		}
		return "redirect:/" + id;
	}

	@RequestMapping("/write")
	public String write(@PathVariable String id, HttpSession session, Model model) {
		System.out.println("write 진입");
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		List<CategoryVo> categoryList = blogService.apiCategoryList(authUser.getUserNo());
		BlogVo blogVo = blogService.selectMainImg(authUser.getUserNo());

		model.addAttribute("blogVo", blogVo);
		model.addAttribute("categoryList", categoryList);
		if (authUser.getId().equals(id)) {
			return "blog/admin/blog-admin-write";
		}
		return "redirect:/" + id;
	}

	@RequestMapping("/writepost")
	public String writepost(@PathVariable String id, @RequestParam("category") int category, PostVo postVo) {
		System.out.println(postVo);
		System.out.println(category); // option의 value값이 들어있음.
		postVo.setCateNo(category);
		System.out.println(postVo);

		blogService.writePost(postVo);
		return "redirect:/" + id + "/admin/write";
	}
}
