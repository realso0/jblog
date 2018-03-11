package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int insertJoin(UserVo userVo) {
		return sqlSession.insert("user.insertJoin", userVo);
	}
	
	public UserVo getListByIdPassword(UserVo userVo) {
		System.out.println(userVo.toString());
		return sqlSession.selectOne("user.getListByIdPassword", userVo);
	}
	
	public int selectUserNo(String id) {
		return sqlSession.selectOne("user.selectUserNo", id);
	}
	
	public UserVo selectApiUserCheck(String id) {
		return sqlSession.selectOne("user.selectApiUserCheck", id);
	}
}
