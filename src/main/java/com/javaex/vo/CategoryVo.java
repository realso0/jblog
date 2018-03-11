package com.javaex.vo;

public class CategoryVo {
	private int rn;
	private int cateNo;
	private int userNo;
	private String cateName;
	private String description;
	private String regDate;
	private int postCount;
	
	public CategoryVo() {
	}

	public CategoryVo(int rn, int cateNo, int userNo, String cateName, String description, String regDate,
			int postCount) {
		this.rn = rn;
		this.cateNo = cateNo;
		this.userNo = userNo;
		this.cateName = cateName;
		this.description = description;
		this.regDate = regDate;
		this.postCount = postCount;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getPostCount() {
		return postCount;
	}

	public void setPostCount(int postCount) {
		this.postCount = postCount;
	}

	@Override
	public String toString() {
		return "CategoryVo [rn=" + rn + ", cateNo=" + cateNo + ", userNo=" + userNo + ", cateName=" + cateName
				+ ", description=" + description + ", regDate=" + regDate + ", postCount=" + postCount + "]";
	}

}
