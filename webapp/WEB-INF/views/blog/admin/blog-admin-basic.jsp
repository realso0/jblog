<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/basic"
				aria-controls="home" role="tab" data-toggle="tab">기본설정</a></li>
			<li role="presentation"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/category"
				aria-controls="profile" role="tab" data-toggle="tab">카테고리</a></li>
			<li role="presentation"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/write"
				aria-controls="messages" role="tab" data-toggle="tab">글작성</a></li>
		</ul><br/>

		<div id="wrapper" class="container">
			<div id="content" class="row form-horizontal">
			<div class="col-md-2"></div>
				<div class="col-md-10">
				<form action="${pageContext.request.contextPath}/${authUser.id}/admin/upload" method="post" enctype="multipart/form-data">
						<div>
							<label>블로그 제목</label>
							<input class="form-control" type="text" size="40" name="blogTitle">
						</div><br/>
						<div>
							<label>로고이미지</label>
							<img class="profile img-thumbnail" src="${pageContext.request.contextPath}/upload/${requestScope.blogVo.logoFile}">
						</div><br/>
						<div>
							<label>&nbsp;</label>
							<input type="file" name="file">
						</div><br/>
						<div>
							<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-ok text-primary"> 메인설정 변경하기</span>
							</button>
						</div>
				</form>
				</div>
			</div>
		</div><br/>

		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/blog/includes/footer.jsp"></c:import>
		<!-- 푸터 -->

	</div>
</body>
</html>