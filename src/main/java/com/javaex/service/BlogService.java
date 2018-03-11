package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.BlogDao;
import com.javaex.vo.BlogVo;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.PostVo;

@Service
public class BlogService {

	@Autowired
	private BlogDao blogDao;

	public BlogVo selectMainImg(int userVo) {
		BlogVo blogVo = blogDao.selectMainImg(userVo);
		// String logoFile=blogVo.getLogoFile();
		// System.out.println(logoFile);
		// String
		// saveName=logoFile.substring(logoFile.lastIndexOf("\\"),logoFile.length());
		// System.out.println(saveName);
		// blogVo.setLogoFile(saveName);
		return blogVo;
	}

	public void restore(MultipartFile file, BlogVo blogVo) {
		System.out.println("restore 진입");

		if (!file.isEmpty()) {
			String saveDir = "C:\\javaStudy\\upload"; // 서버에 저장할 공간 만들기(저장 위치), 경로를 줄 때 \\는 윈도우환경에서 사용하는 표현
														// 실제 그림 저장할 장소
			// 1-파일정보 수집
			// 원래 파일이름
			String orgName = file.getOriginalFilename();
			System.out.println(orgName); // 첨부된 파일이름 출력됨.

			// 확장자(본래이름에서 잘라내기)
			String extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			System.out.println(extName);

			// 고유한 저장 파일이름(서버에 저장될 이름으로, 유일해야함)
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + extName;
			// UUID가 랜덤하게 길게 값(이름)을 뽑아줌. 시간까지 추가해서 절대로 이름이 안겹치게 시간메소드까지 추가 + 확장자명
			System.out.println(saveName); // 고유한 파일이름이 출력됨.

			// 파일 위치(path)
			String filePath = saveDir + "\\" + saveName; // 고유한 이름으로 찾은 파일의 위치
			System.out.println(filePath); // 서버에 저장될 경로

			// 파일 사이즈
			long fileSize = file.getSize(); // 크기를 알수 있는 메서드
			System.out.println(fileSize);
			// vo에 만들어서, 이후에 db저장하는 것은 알아서 할 것.
			blogVo.setLogoFile(saveName); // filePath를 db에 저장하는 것은 나중에 잘라야 해서 미련한 짓임.

			System.out.println(blogVo.toString());

			// 2-파일 카피
			try {
				byte[] fileData = file.getBytes(); // byte단위로 파일을 읽어와서, 배열에 담음.
				OutputStream out = new FileOutputStream(saveDir + "/" + saveName); // 사용자로부터 서버 메모리에 올라온 데이터를 파일 위치에
																					// 저장해야함.
				// 파일위치에 저장하기 위한 길(빨대)을 만듬.
				BufferedOutputStream bout = new BufferedOutputStream(out);
				// 저장하기 위한 길(out)에 buffered를 이용한 빠른길(buffered는 여러개씩 모아서, 한번에 많이씩 보내줌)을 하나 더
				// 얹어주어, 저장 속도를 빠르게 해줌.
				// -1이 끝나는 값(eof=-1)
				bout.write(fileData);

				if (bout != null) { // -1이면 끝내기
					bout.close();
				}

			} catch (IOException e) {
				e.printStackTrace();
			}
			// 이제 업로드 해보면, 원래 있던 파일(사용자 컴퓨터)이 서버의 저장위치에 복사본으로 하나 저장되는 것을 볼 수 있음.
			// 카피 제대로 됬으면 db에 저장되도록 하는게 좋음.
		}
		System.out.println(blogVo.toString());
		blogDao.updateUpload(blogVo);
	}

	public List<CategoryVo> apiCategoryList(int userNo) {
		return blogDao.apiCategoryList(userNo);
	}

	public CategoryVo apiAddList(CategoryVo categoryVo) {
		if (categoryVo.getCateName()!=null && categoryVo.getCateName()!="" &&
				categoryVo.getDescription()!=null&& categoryVo.getDescription()!="") {
			blogDao.apiInsertList(categoryVo);
			List<CategoryVo> alist = blogDao.apiCategoryList(categoryVo.getUserNo()); // 추가된 데이터를 포함한 categoryVo 모두를 갖고 있음.
			// 맨 끝번호(rn)의 vo만 가져오면 됨.
			System.out.println(alist);
			int i = alist.size() - 1;
			System.out.println(i);
			categoryVo = alist.get(i);
			System.out.println(categoryVo);
		}else {
			categoryVo.setCateName("");
			categoryVo.setDescription("");
		}
		return categoryVo;
	}

	public int apiDeleteCate(int cateNo) {
		System.out.println("post : " + blogDao.apiDeleteConfirm(cateNo));
		if (blogDao.apiDeleteConfirm(cateNo)>=1) {
			return 0;
		} else {
			return blogDao.apiDeleteCate(cateNo);
		}
	}

	public int writePost(PostVo postVo) {
		return blogDao.insertPost(postVo);
	}
	
	public List<PostVo> getPostList(int userNo, String selectedCateNo, String selectedPostNo) {
		if(selectedCateNo!=null&&selectedPostNo==null) {
			return blogDao.selectPostList(userNo,selectedCateNo); 
		}

		return blogDao.selectPostList(userNo); //메인 들어가자 마자 리스트
	}
	
	public PostVo getPostTitleContent(int userNo, String selectedCateNo, String selectedPostNo) {
		if(selectedCateNo == null) {
			return blogDao.selectTitleContentByUserNo(userNo);   //가장 최근 포스트 기본 출력
		}
		if(selectedPostNo != null) {
			return blogDao.selectPostTitleContentByPostNo(selectedPostNo); //포스트 제목을 클릭햇을경우 해당 포스트 출력
		}
		
		return blogDao.selectTitleContentByCateNo(userNo, selectedCateNo); //카테고리 선택시 최근 포스트 출력
	}

}
