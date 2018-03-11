package com.javaex.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BlogVo;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.PostVo;

@Repository
public class BlogDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insertBlog(int userNo) {
		System.out.println(userNo);
		return sqlSession.insert("blog.insertBlog", userNo);
	}
	
	public int defaultCategory(int userNo) {
		System.out.println(userNo);
		return sqlSession.insert("blog.defaultCategory", userNo);
	}
	
	public BlogVo selectMainImg(int userNo) {
		return sqlSession.selectOne("blog.selectMainImg", userNo);
	}
	
	public int updateUpload(BlogVo blogVo) {
		System.out.println("insertUpload 진입");
		return sqlSession.update("blog.updateUpload", blogVo);
	}
	
	public List<CategoryVo> apiCategoryList(int userNo) {
		return sqlSession.selectList("blog.selectApiCategoryList", userNo);
	}
	
	public int apiInsertList(CategoryVo categoryVo) {
		return sqlSession.insert("blog.insertCategory", categoryVo);
	}
	
	public int apiDeleteCate(int cateNo) {
		return sqlSession.delete("blog.deleteCategory", cateNo);
	}
	
	public int apiDeleteConfirm(int cateNo) {
		return sqlSession.selectOne("blog.deleteConfirm", cateNo);
	}
	
	public int insertPost(PostVo postVo) {
		return sqlSession.insert("blog.insertPost", postVo);
	}
	
	public List<PostVo> selectPostList(int userNo) {
		return sqlSession.selectList("blog.selectPostListByuserNo", userNo);
	}
	
	public List<PostVo> selectPostList(int userNo, String selectedCateNo) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("selectedCateNo",selectedCateNo);

		return sqlSession.selectList("blog.selectPostListByuserNoCateNo", map);
	}

	public PostVo selectTitleContentByUserNo(int userNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("blog.selectTitleContentByUserNo", userNo);
	}
	
	public PostVo selectTitleContentByCateNo(int userNo, String selectedCateNo) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("selectedCateNo",selectedCateNo);
		return sqlSession.selectOne("blog.selectTitleContentByCateNo", map);
	}
	
	public PostVo selectPostTitleContentByPostNo(String selectedPostNo) {
		return sqlSession.selectOne("blog.selectPostByPostNo", selectedPostNo);
	}

}
