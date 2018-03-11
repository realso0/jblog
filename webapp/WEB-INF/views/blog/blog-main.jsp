<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBlog</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
</head>
<body>

	<div id="container">

		<!-- 블로그 해더 -->
		<c:import url="/WEB-INF/views/blog/includes/header.jsp"></c:import>
		<!-- /블로그 해더 -->
		
		<div id="wrapper">
			<div id="content">
				<div class="blog-content">
					<c:if test="${empty postVo.postNo}">
						<h4>블로그에 작성된 글이 없습니다. </h4>
					</c:if>
					<h4>${postVo.postTitle}</h4>
					<p>${fn:replace(postVo.postContent, ctrl, "</br>" )} </p>
				</div>
				
				<ul class="blog-list">
					<c:forEach items="${eList}" var="postList"> 
						<li><a href="${pageContext.request.contextPath}/${id}?selectedPostNo=${postList.postNo}&selectedCateNo=${postList.cateNo}">${postList.postTitle}</a> <span>${postList.regDate}</span></li>
					</c:forEach>

				</ul>
			</div>
		</div>

		<div id="extra">
			<div class="blog-logo">
				<img class="img-thumbnail" src="${pageContext.request.contextPath}/upload/${requestScope.blogVo.logoFile}">
			</div>
		</div>

		<div id="navigation">
			<h2>카테고리</h2>
			<ul>
			<c:forEach items="${requestScope.categoryList}" var="categoryVo">
				<li><a href="${pageContext.request.contextPath}/${id}?selectedCateNo=${categoryVo.cateNo}">${categoryVo.cateName}</a></li>
			</c:forEach>
			</ul>
		</div>
		
		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/blog/includes/footer.jsp"></c:import>
		<!-- 푸터 -->
		
	</div>
</body>
	
</html>