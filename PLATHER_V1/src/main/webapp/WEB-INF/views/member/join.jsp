<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/join.css?ver=3" rel="stylesheet" />
</head>
<body>
	<div id="container">
		
		<form class="join_form">
			<fieldset>
				<legend>회원가입</legend>
			<!-- 	<div>
					<img src="${rootPath}/static/images/locked.png" />
				</div>    -->

				<p><label>이름</label><input placeholder="이름"/></p>
				<p><label>이메일</label><input placeholder="아이디(이메일)"/></p>
				<p><label>닉네임</label><input placeholder="닉네임"/></p>
				 <p><label>비밀번호</label><input placeholder="비밀번호"/></p>
				<p><label>비밀번호 확인</label><input placeholder="비밀번호확인"/></p>
				<p><label>생년월일</label> <input placeholder="생년월일"/></p>
			</fieldset>
			<div class="buttons">
			<button>🖉 제출하기</button>
			<button type="reset">↺ 다시작성</button>
			<button>⬅ 이전화면</button>	
			</div>
		</form>
	</div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>