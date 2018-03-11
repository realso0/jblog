<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<title>JBlog</title>
</head>
<body>

	<div id="container">

		<!-- 블로그 해더 -->
		<c:import url="/WEB-INF/views/blog/includes/header.jsp"></c:import>
		<!-- /블로그 해더 -->


	<ul class="nav nav-tabs" role="tablist">
			<li role="presentation"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/basic"
				aria-controls="home" role="tab" data-toggle="tab">기본설정</a></li>
			<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/category"
				aria-controls="profile" role="tab" data-toggle="tab">카테고리</a></li>
			<li role="presentation"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/write"
				aria-controls="messages" role="tab" data-toggle="tab">글작성</a></li>
		</ul><br/>


	<div id="wrapper" class="container">
		<div id="content" class="row full-screen">
			<div class="col-md-1"></div>
				<div class="col-md-11">
				<table class="admin-cat table table-condensed">
					<colgroup>
						<col width="7%">
						<col width="30%">
						<col width="10%">
						<col width="">
						<col width="10%">
					</colgroup>
					<thead>
					<tr id="tt">
						<th class="text-center">번호</th>
						<th class="text-center">카테고리명</th>
						<th class="text-center">포스트 수</th>
						<th class="text-center">설명</th>
						<th class="text-center">삭제</th>
					</tr>
					</thead>
				</table>

				<h4 class="n-c"><b>새로운 카테고리 추가</b></h4>
				<form id="admin-cat-add" class="text-left">
					<div>
						<label class="t text-center">카테고리명</label>
						<input type="text" name="name">
					</div>
					<div>
						<label class="t text-center">설명</label>
						<input type="text" name="desc">
					</div>
					<div>
						<button type="submit" id="btnInsert" class="btn btn-default">
						<span class="glyphicon glyphicon-ok text-primary"> 카테고리 추가</span>
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

<script type="text/javascript">
	var page=1;

	console.log(page); //페이지의 내용이 로딩되기 이전에 데이터 요청

	$(document).ready(function() {
		console.log(page);
		fetchList(); 
		//var userNo = ${authUser.userNo};
		//fetchList(userNo); 
		//이렇게 하면, controller에서 httpSession을 안 부르고, fetch에서 매개변수를 받아, controller로 userNo 값을 넘기는 방법도 있음.
	});
	
	function render(categoryVo, updown) {
		var str = "";
		str += "<tr id='g"+ categoryVo.cateNo+ "'>";
		str += "<td class=text-center>" + categoryVo.rn + "</td>";
		str += "<td class=text-center>" + categoryVo.cateName + "</td>";
		str += "<td class=text-center>" + categoryVo.postCount + "</td>"; //수정해야함.
		str += "<td class=text-center>" + categoryVo.description + "</td>";
		str += "<td class=text-center><span class='delete glyphicon glyphicon-remove text-danger' data-no='"+categoryVo.cateNo+"' data-na='"+categoryVo.postCount+"'></td>";
		str += "</tr>";

		if (updown == "up") {
			$("#tt").after(str); //str을 listArea영역 앞쪽에 추가하기
		} else if (updown == "down") {
			$(".admin-cat").append(str);
		} else {
			console.log("update 오류");
		}
	}; //str을 listArea영역 앞쪽에 추가하기

	function fetchList() {
		$.ajax({ //리스트 요청
			url : "${pageContext.request.contextPath}/${authUser.id}/admin/category/apiList",
			type : "post",
			/* data : {
				page : page
			}, */ //데이터를 줄 때 parameter
			
			dataType : "json", //데이터를 받을때 리턴타입 , json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
			success : function(categoryList) {
				//glist가 콘솔창에 도착했는지 테스트, 여기까지 성공했다면, 위에 주석처리 한 것을 하나하나 
				console.log(categoryList);
				
				for (var i=0; i<categoryList.length; i++) {
					render(categoryList[i],"up");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};
	
	$("#btnInsert").on("click", function(){
		console.log("btnInsert");
		var name = $("[name=name]").val();
		var desc = $("[name=desc]").val();
		
		var tt = {
				cateName:name,
				description:desc //vo로 넘길 때는 안의 변수 이름이 vo와 같아야 인식함.
		}; //데이터를 줄 때 parameter, vo값 만들어줄 때도 세미콜론 잊지말기.
		
		console.log(name);
		console.log(desc);
		console.log(tt); //tt로 데이터 보내도 받을 수 있음.
		$.ajax({
			//보내기
			url : "${pageContext.request.contextPath}/${authUser.id}/admin/category/apiAddCate",
			type : "post",
			contentType : "application/json", //json 형태로 바디에 담아 보내겠다고 타입 지정함.
			data : JSON.stringify(tt), //json으로 보낼 때는 문자형으로 보내야, 짜를수 있음(파싱해주기)
			//stringify를 해줘야, 바디에 담아 보낼수 있음.
			//받기
			dataType : "json", //데이터를 받기 위한 리턴타입 , json으로 리턴받는데, json은 문자열임(객체, 맵처럼 쌍으로 묶어 받음.)
			success : function(categoryVo){ //리턴 받은 데이터 그대로 사용.
			/*성공시 처리해야될 코드 작성*/
				if (categoryVo.name!="" && categoryVo.description!="" ) {
					console.log(categoryVo); //guestbookVo가 콘솔창에 도착했는지 테스트
					render(categoryVo, "up");
				
					$("[name=name]").val(""); //기존에 작성했던 글 다시 공백으로 바꿔주기.
					$("[name=desc]").val("");
				} else {
					alert("카테고리명과 설명을 작성해주세요.");
				}
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	$(".admin-cat").on("click",".delete", function(){ //class는 여러개여도 됨. admin-cat 클래스 묶음 안에서 delete 클래스를 누르면, 삭제되도록 함.
		var no=$(this).data("no"); //cateNo를 가져오는 또 다른 방법. 태그 값으로 data-no에 값 지정해두면 쉽게 가져올 수 있음.
		var postCount=$(this).data("na");
		console.log(no);
		console.log(postCount);
		
		$.ajax({
			//보내기
			url : "${pageContext.request.contextPath}/${authUser.id}/admin/category/apiDeleteCate",
			type : "post",
			//contentType : "application/json", //json타입으로, 바디에 넣어보냄.
			data : {cateNo:no}, //값 넘겨줄 때 변수이름 vo 설정으로 맞춰주기

			//받기
			dataType : "json",
			success : function(count) {
				if(count==1){
					console.log(count+"개 제거 완료")
					
					$("#g"+no).remove(); //tr마다 id를 주어, 번호에 해당하는 no(cateNo)를 삭제(페이지에 없앤 값 반영하기)
				} else {
					alert(postCount+"개의 포스팅 글이 있어, 삭제할 수 없습니다.");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	
</script>

</html>