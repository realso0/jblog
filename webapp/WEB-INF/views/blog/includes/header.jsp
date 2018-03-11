<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header">
		<h1><a href="${pageContext.request.contextPath}/${id}">
			<c:if test="${blogVo.blogTitle==' '}">
				<h4>${id}의 블로그입니다.</h4>
			</c:if>
			${blogVo.blogTitle}</a></h1>
	<ul>
		<c:choose>
			<c:when test="${empty sessionScope.authUser}">
				<!-- 로그인 전 메뉴 -->
				<li><a href="${pageContext.request.contextPath}/user/login">로그인</a></li>
			</c:when>

			<c:when test="${not empty sessionScope.authUser}">
				<!-- 로그인 후 메뉴 -->
				<li><a href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
					<c:if test="${id==authUser.id}">
						<li><a href="${pageContext.request.contextPath}/${authUser.id}/admin/basic">내블로그 관리</a></li>
					</c:if>
			</c:when>
		</c:choose>
	</ul>
</div>
