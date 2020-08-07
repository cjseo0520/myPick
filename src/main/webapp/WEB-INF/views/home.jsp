<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<jsp:include page="header.jsp" />
<html>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css?after" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
</head>
<style>
</style>
<%-- <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script> --%>
<body oncontextmenu='return false' ondragstart='return false' onselectstart='return false'>
	<div class="mainBody">
		<div class=mainSearch>
			<ul>
				<li class="menu">
					<div class="city">
						<label>지역명, 도시명 </label>
						<div style="margin-top: 10px;">
							<div class="serchCss">
								<img src="${pageContext.request.contextPath }/img/serch.png"
									class="serchImg">
							</div>
							<div>
								<input type="text" id="citySelect" class="citySelect"
									placeholder="지역을 입력해주세요" />
							</div>
						</div>
					</div>
					<ul class="hide" id="hide">
						<li id="hideClick"><label class="hiddenCity"><img
								src="${pageContext.request.contextPath }/img/gps.png"
								class="hiddenImg">서울특별시, 강남구 </label></li>
						<li id="hideClick"><label class="hiddenCity"><img
								src="${pageContext.request.contextPath }/img/gps.png"
								class="hiddenImg">부산광역시, 진구</label></li>
						<li id="hideClick"><label class="hiddenCity"><img
								src="${pageContext.request.contextPath }/img/gps.png"
								class="hiddenImg">대구광역시, 수성구</label>
						<li>
						<li id="hideClick"><label class="hiddenCity"><img
								src="${pageContext.request.contextPath }/img/gps.png"
								class="hiddenImg">인천광역시, 부평구</label></li>
						<li id="hideClick"><label class="hiddenCity"><img
								src="${pageContext.request.contextPath }/img/gps.png"
								class="hiddenImg">광주광역시, 서구</label></li>
						<li id="hideClick"><label class="hiddenCity"><img
								src="${pageContext.request.contextPath }/img/gps.png"
								class="hiddenImg">대전광역시, 서구</label></li>
						<li id="hideClick"><label class="hiddenCity"><img
								src="${pageContext.request.contextPath }/img/gps.png"
								class="hiddenImg">울산광역시, 남구</label></li>
					</ul>
				</li>
			</ul>
			<div class="tripCheckDate">
				<div class="checkIn">
					<label>체크인</label>
					<div style="margin-top: 10px;">
						<div class="serchCss">
							<img src="${pageContext.request.contextPath }/img/calendar.png"
								class="serchImg">
						</div>
						<input type="text" id="checkInDate" class="checkDate"
							readonly="readonly">
					</div>
				</div>
				<div class="checkOut">
					<label>체크아웃</label>
					<div style="margin-top: 10px;">
						<div class="serchCss">
							<img src="${pageContext.request.contextPath }/img/calendar.png"
								class="serchImg">
						</div>
						<input type="text" id="checkOutDate" class="checkDate"
							readonly="readonly">
					</div>
				</div>
			</div>
			<div class="topMember">
				<div class="selectMember">
					<div class="room">
						객실
						<div class="num" id="romNum">
						<input type="button" value="◀" class="btnCss" onclick="onClickRoomL()"> 
							<div id="roomLabel">1</div>
						<input type="button" value="▶" class="btnCss" onclick="onClickRoomR()">
						</div>
					</div>
					<div class="adult">
						성인
						<div class="num" id="adultNum">
						<input type="button" value="◀" class="btnCss" onclick="onClickAdultL()">
						<label id="adultLabel">2</label>
						<input type="button" value="▶" class="btnCss" onclick="onClickAdultR()">
						</div>
					</div>
					<div class="child">
						소인
						<div class="num" id="childNum">
						<input type="button" value="◀" class="btnCss" onclick="onClickChildL()">
						<label id="childLabel">0</label> 
						<input type="button" value="▶" class="btnCss" onclick="onClickChildR()">
						</div>
					</div>
				</div>
				<div class="submit">
					<input type="submit" value="검색" class="btnSubmit">
				</div>
			</div>
		</div>
	</div>
	<script>
		
	</script>
	<script>
		//상위메뉴 누르면 열리기
		$(document).ready(function() {
			$(".menu>div").click(function() {
				var submenu = $(this).next("ul");
				if (submenu.is(":visible")) {
					submenu.slideUp();
				} else {
					submenu.slideDown();
				}
			});
		});
		function getEventTarget(e) {
			e = e || window.event;
			return e.target || e.srcElement;
		} 
		var ul = document.getElementById('hide');
		let down = 0;
		let up = 0;
		// onclick을 두 파트로 나누어서 눌렀을 때와 뗐을 때로 구분
		ul.addEventListener('mousedown', (event) => {
			down = event.clientY;
		}); 
		ul.addEventListener('mouseup', (event) => {
			up = event.clientY;
			if(up === down) {
				var target = getEventTarget(event);
				test = target.innerText
				document.getElementById("citySelect").value = (test);
				var submenu1 = $(".hide>li").parent();
				submenu1.slideUp();
			}
			
		}); 
		
		//오늘날짜 받아오기
		window.onload = function() {
			var dt = new Date();
			var Year = dt.getFullYear();
			var Month = "" + (dt.getMonth() + 1);
			var Day = "" + dt.getDate();
			var TomorrowDay = "" + (dt.getDate() + 1);
			console.log(dt)
			if (Month.length < 2)
				Month = "0" + Month;
			if (Day.length < 2)
				Day = "0" + Day;
			if (TomorrowDay.length < 2)
				TomorrowDay = "0" + TomorrowDay;

			var Today = Year.toString() + '-' + Month + '-' + Day;
			var Tomorrow = Year.toString() + '-' + Month + '-' + TomorrowDay;
			document.getElementById("checkInDate").value = Today;
			document.getElementById("checkOutDate").value = Tomorrow;
		}
		$(document).ready(function() {
			$("#checkInDate").datepicker({
				dateFormat : "yy-mm-dd"
			});
			$("#checkOutDate").datepicker({
				dateFormat : "yy-mm-dd",
				defaultDate : +1
			});
		});
		//숫자 올리기
		var numUpRool = 1;
		var numUpAdult = 2;
		var numUpChild = 1;
		function onClickRoomL() {
			numUpRool--;
			console.log(numUpRool)
			$('#roomLabel').text(numUpRool)
		}
		function onClickRoomR() {
			numUpRool++;
			console.log(numUpRool)
		}
		function onClickAdultL() {
			numUpAdult--;
			console.log(numUpAdult)
		}
		function onClickAdultR() {
			numUpAdult++;
			console.log(numUpAdult)
		}
		function onClickChildL() {
			numUpChild--;
			console.log(numUpChild)
		}
		function onClickChildR() {
			numUpChild++;
			console.log(numUpChild)
		}
	</script>
</body>
</html>
