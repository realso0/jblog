package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaex.dao.BlogDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	@Autowired
	private BlogDao blogDao;
	
	@Transactional
	public int join(UserVo userVo) {
		if (userVo.getId()!=null&&userVo.getId()!=""&&
				userVo.getPassword()!=null&&userVo.getPassword()!=""&&
				userVo.getPassword().length()>=8&&userVo.getPassword().length()<=15&&
				!(userVo.getId().equals(userDao.selectApiUserCheck(userVo.getId()).getId()))) {
			System.out.println(userVo); //userNo 없음.
			userDao.insertJoin(userVo);
			System.out.println(userVo); //들어갔다오면 userNo를 입력받고 나옴.
			blogDao.insertBlog(userVo.getUserNo());
			blogDao.defaultCategory(userVo.getUserNo());
			System.out.println();
			return 1;
		} else {
			return 0;
		}
	}
	
	public UserVo login(String id, String password) {
		UserVo userVo=new UserVo();
		userVo.setId(id);
		userVo.setPassword(password);
		System.out.println(userVo.toString());
		return userDao.getListByIdPassword(userVo);
	}
	
	public int getUserNo(String id) {
		return userDao.selectUserNo(id);
	}
	
	public boolean apiIdCheck(String id) {
		boolean result;
		UserVo userVo=userDao.selectApiUserCheck(id);
		System.out.println(userVo);
		if (userVo!=null) { //이미 db에 있으면 result=false
			result=false; //false==0
		} else {
			result=true;
		}
		return result;
	}
}
