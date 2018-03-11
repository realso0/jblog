<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<li role="presentation"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/basic"
				aria-controls="home" role="tab" data-toggle="tab">기본설정</a></li>
			<li role="presentation"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/category"
				aria-controls="profile" role="tab" data-toggle="tab">카테고리</a></li>
			<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/write"
				aria-controls="messages" role="tab" data-toggle="tab">글작성</a></li>
		</ul><br/>
		
		<div id="wrapper" class="container">
			<div id="content" class="row">
			<div class="col-md-2"></div>
			
			<div class="col-md-10">
				<form class="form-horizontal" action="${pageContext.request.contextPath}/${authUser.id}/admin/writepost" method="post">
					<div class="form-group">
						<div class="col-md-2">
							<!-- 그리드를 1:11로 칸을 나눔 -->
							<label>제목</label>
						</div>
						<div class="col-md-10">
							<div class="form-inline">
								<input class="form-control category-menu" type="text" name="postTitle" value="">
								<select name="category" class="form-control">
				      			<c:forEach items="${requestScope.categoryList}" var="categoryVo">
				      				<option value="${categoryVo.cateNo}">${categoryVo.cateName}</option>
								</c:forEach>
								</select>
							</div>
	
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-2">
							<!-- 그리드를 1:11로 칸을 나눔 -->
							<label>내용</label>
						</div>
						<div class="col-md-10">
							<textarea class="form-control" name="postContent" rows="10" style="resize:none"></textarea>
						</div>
					</div>
					<div class="pull-right">
					<button type="submit" class="btn btn-default">
						<span class="glyphicon glyphicon-ok text-primary">저장</span>
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