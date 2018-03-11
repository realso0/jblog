<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<title>JBlog</title>
<link rel="stylesheet" href="/jblog/assets/css/jblog.css">
</head>
<body>
	<div class="center-content">
		
		<!-- 메인해더 -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
 		<!-- /메인해더 -->
 		
		<form class="join-form" id="join-form" method="post" action="${pageContext.request.contextPath}/user/joinsuccess">
			<label class="block-label" for="name">이름</label>
			<input type="text" name="userName"  value="" />
			
			<label class="block-label" for="id">아이디</label>
			<input type="text" name="id"  value="" />
			<input id="btn-checkid" type="button" value="id 중복체크">
			<img id="img-checkid" style="display: none;" src="${pageContext.request.contextPath}/assets/images/check.png">
			<p class="form-error">
			</p>

			<label class="block-label" for="password">패스워드</label>
			<input type="password" name="password"  value="" />
			<p id="chkPassword"></p>

			<fieldset>
				<legend>약관동의</legend>
				<input id="agree-prov" type="checkbox" name="agreeProv" value="y">
				<label class="l-float">서비스 약관에 동의합니다.</label>
			</fieldset>

			<input type="submit" value="가입하기">

		</form>
	</div>

</body>

<script type="text/javascript"> <!-- 자바스크립트 코드가 브라우저로 텍스트로 내려가서, 해석됨. -->
$("#btn-checkid").on("click", function() {
	var id=$("[name=id]").val();
	console.log(id);
	
	$.ajax({
		url : "${pageContext.request.contextPath}/user/api/idCheck",		
		type : "post",
		//contentType : "application/json", 
		data : {id:id}, 
		//data : JSON.stringify(userVo),
		
		dataType : "json",
		success : function(result){ //result를 우리는 true, false로 함.
			/*성공시 처리해야될 코드 작성*/
			console.log(result); //contrller로부터 제대로 값을 받아, 오는지 테스트
			if(result==0) {
				$(".form-error").html("<font color=\"red\">다른 아이디로 가입해 주세요.</font>");
			} else {
				$(".form-error").text("사용할 수 있는 아이디 입니다");
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error); //실패(통신장애, 시도조차 안된 경우)했을 때, 처리해야할 코드 작성
		}
	});
});

$("[name=password]").keyup(function(){
	var pw = $("[name=password]").val();
	var check = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
	if(!check.test(pw)) {
		$("#chkPassword").html("<font color=\"red\">8~15자의 영문대소문자, 숫자 및 특수문자 사용</font>");
	} else {
		$("#chkPassword").text("사용 가능한 비밀번호입니다.");
	}
});
</script>
</html>