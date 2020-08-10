<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
.headerBody {
	border: 1px solid;
	width: 1200px;
	height: 150px;
	margin: auto;
}
.mainImg{
    width: 300px;
    height: 80px;
    float: left;
    margin-top: 25px;
    margin-left: 20px;
}
.selectButton {
	border: 1px solid red;
	width: 500px;
	height: 80px;
	margin: auto;
	margin-top: 25px;
}
.shopName{
    width: 200px;
    height: auto;
    margin-left: 20px;
}
#serchButton {
	width: 50px;
	height: 24px;
}

.selectTitle {
	width: 30pt;
	height: auto;
	float: left;
	margin-right: 60px;
	margin-left: 25px;
	margin-top: 14px;
}
.topTitle{
	float: right;
	margin-right: 50px;
}

#hotel {
	width: 70px;
	height: 50px;
}

#trip {
	width: 70px;
	height: 50px;
}

#event {
	width: 70px;
	height: 50px;
}

#inform {
	width: 70px;
	height: 50px;
}
#search{
    width: 70px;
    height: 25px;
}
#login{
    width: 70px;
    height: 25px;
}
</style>
<head>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="${pageContext.request.contextPath}/css/style.css?after" /> --%>
<!-- head내용 -->
<meta charset="UTF-8">
<title></title>
<body>
	<div class="headerBody">
		<div class="shopName">
			<input type="button" id="selectHotels" value="한국호텔">
			<input type="button" id="selectTour" value="한국투어"> 
		</div>
		<div id="topbar">
			<div class="topTitle">
				<input type="button" id="search" value="검색" onclick="location.href='#">
				<input type="button" id="login" value="로그인" onclick="location.href='${pageContext.request.contextPath}/login/'">
			</div>
		</div>
		<div class="mainImg">
			<img alt="" src="${pageContext.request.contextPath }/img/main.png" onclick="location.href='${pageContext.request.contextPath}'">
		</div>
		<div class="selectButton">
			<div class="selectTitle">
				<input type="button" id="hotel" value="숙박">
			</div>
			<div class="selectTitle">
				<input type="button" id="trip" value="여행">
			</div>
			<div class="selectTitle">
				<input type="button" id="event" value="이벤트" onclick="location.href='#'">
			</div>
			<div class="selectTitle">
				<input type="button" id="inform" value="고객센터" onclick="location.href='#">
			</div>
		</div>

	</div>
</body>

</head>

</html>