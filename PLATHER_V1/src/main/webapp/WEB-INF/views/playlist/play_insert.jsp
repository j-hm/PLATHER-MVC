<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/play_insert.css?ver=2021-06-12-004"
	rel="stylesheet" />
</head>
<body>
	<%@include file="/WEB-INF/views/include/include_header.jspf"%>
	<div id="container">
		<form id="main-form">
			<div class="div-ptitle">
				<label class="la-title">플레이리스트 제목</label> <input
					class="content i-title" placeholder="PlayList Title" />
			</div>
			<div class="div-name">
				<label class="la-name">작성자</label><span class="nickname">nickname</span>
			</div>
			<div class="div-content">
				<label class="la-content">내용</label>
				<textarea name="t-content" class="content" cols="50" rows="4"></textarea>
			</div>
			<div class="div-sub">
				<form id="sub-form"></form>
				<fieldset>
					<legend>노래추가</legend>
					<div class="div-mtitle">

						<input class="content i-musictitle" placeholder="노래제목" />
					</div>

					<div class="div-singer">

						<input class="content i-singer" placeholder="가수" />
					</div>
					<div class="div-button">
						<button class="btn-add">➕ 추가</button>
						<button class="btn-cancel">✖ 취소</button>
					</div>
				</fieldset>
		</form>
	</div>
	<div>
		<button class="btn-save">💾 저장</button>
		<button class="btn-temp-save">💿 임시저장</button>
		<button class="btn-reset">↺ 다시작성</button>
	</div>
	</form>
	</div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>