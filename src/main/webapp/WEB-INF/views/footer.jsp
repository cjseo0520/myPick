<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css?after" />
<!-- head내용 -->
<meta charset="UTF-8">
<title></title>
<body>
	<div>
		<div id="shopName">
			<label>호캉스다나와</label>
		</div>
		<div id="serch">
			<label>검색 </label><input type="text" id="serchText" value=""
				placeholder="상품명"> <input type="button" id="serchButton"
				value="검색" onclick="">
		</div>
		<div id="selectButton">
			<div class="selectTitle">
				<input type="button" id="hotel" value="숙박">
			</div>
			<div class="selectTitle">
				<input type="button" id="trip" value="여행">
			</div>
			<div class="selectTitle">
				<input type="button" id="event" value="이벤트" onclick="location.href='#'">
			</div>
			<div class="topTitle">
				<input type="button" id="inform" value="고객센터" onclick="location.href='#">
			</div>
		</div>
		<div id="topbar">
			<div class="topTitle">
				<input type="button" id="login" value="로그인" onclick="location.href='${pageContext.request.contextPath}/login/'">
			</div>
		</div>
	</div>
</body>

</head>

</html>