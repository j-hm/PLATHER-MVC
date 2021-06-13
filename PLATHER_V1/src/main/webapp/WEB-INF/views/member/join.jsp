<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/join.css" rel="stylesheet" />
</head>
<body>
	<div id="container">
		<form class="join_form">

			<fieldset>
				<legend>회원가입</legend>
				<div>
					<img src="${rootPath}/static/images/locked.png" />
				</div>


				<input placeholder="아이디(이메일)"> <input placeholder="비밀번호">
				<input placeholder="비밀번호확인"> <input placeholder="생년월일">
				<input placeholder="닉네임">
			</fieldset>
		</form>
	</div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>