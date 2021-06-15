<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/login.css?ver=003" rel="stylesheet" />
</head>
<body>
	<div class="main_box">
		<p>welcome :)</p>
		<div class="main_img"></div>


		<form method="POST" class="sub_box">
			<section class="sub_menu">
				<div class="box_username">
					<div class="sub_img1"></div>
					<label>UserName</label> <input id="ip_username" placeholder="ID 입력"></input>
				</div>


				<div class="box_password">
					<div class="sub_img2"></div>
					<label>PassWord</label> <input id="ip_password" placeholder="PW 입력" />
				</div>

				<p class="member">
					회원이 아니신가요?? <a href="${rootPath}/login/join">가입하기</a>
				</p>
				<div class="btn_su">
					<button>Sign Up!</button>
				</div>
			</section>

		</form>

	</div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>