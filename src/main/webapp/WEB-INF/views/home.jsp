<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<jsp:include page="header.jsp"/>
<html>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css?after" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
</head>
<style>

</style>
<%-- <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script> --%>

<body>
     <div class="mainBody">
     	<div class=mainSearch>
			    <ul>
			        <li class="menu">
			        <div class="city"><label>지역명, 도시명 </label>
			        	<div style="margin-top: 10px;">
			        		<div class="serchCss">
			        			<img src="${pageContext.request.contextPath }/img/serch.png" class="serchImg">
			        		</div>
			        		<div>
			        			<input type="text" id="citySelect" class="citySelect" placeholder="지역을 입력해주세요"/>
			        		</div>
			        	</div>
			        </div>
			            <ul class="hide" id="hide">
			                <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">서울특별시, 강남구 </label></li>
			                <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">부산광역시, 진구</label></li>
			                <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">대구광역시, 수성구</label><li>
			                <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">인천광역시, 부평구</label></li>
			                <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">광주광역시, 서구</label></li>
		               		<li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">대전광역시, 서구</label></li>
        			        <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">울산광역시, 남구</label></li>
			            </ul>
			        </li>
			    </ul>
			<div>
			    <div class="checkIn">
			    	<label>체크인</label>
		        		<div style="margin-top: 10px;">
				        	<div class="serchCss">
		        				<img src="${pageContext.request.contextPath }/img/calendar.png" class="serchImg">
			        		</div>
		    				<input type="text" id="checkInDate" class="checkDate" readonly="readonly">
			    		</div>
			    </div>
			    
			    <div class="checkOut">
			    	<label>체크아웃</label>
			    		<div style="margin-top: 10px;">
				        	<div class="serchCss">
		        				<img src="${pageContext.request.contextPath }/img/calendar.png" class="serchImg">
			        		</div>
		    				<input type="text" id="checkOutDate" class="checkDate" readonly="readonly">
			    		</div>
			    </div>
		    </div>
	    </div>
	    
	</div>
<script>

    
</script>
<script>
	//상위메뉴 누르면 열리기
	$(document).ready(function(){
	    $(".menu>div").click(function(){
	        var submenu = $(this).next("ul");
	        if( submenu.is(":visible") ){
	            submenu.slideUp();
	        }else{
	            submenu.slideDown();
	        }
	    });
	});
    function getEventTarget(e) {
        e = e || window.event;
        return e.target || e.srcElement; 
    }

    var ul = document.getElementById('hide');
    ul.onclick = function(event) {
        var target = getEventTarget(event);
		test = target.innerText.replace("클릭", "")
        document.getElementById("citySelect").value=(test);
    };
	//하위메뉴 클릭시 닫기
	$(document).ready(function(){
	    $(".hide>li").click(function(){
	        var submenu1 = $(this).parent()
	        if( submenu1.is(":visible") ){
	            submenu1.slideUp();
	        }else{
	            submenu1.slideDown();
	        }
	    });
	});
	//오늘날짜 받아오기
	window.onload = function(){
	    var dt = new Date();
	    var Year = dt.getFullYear();        
	    var Month = "" + (dt.getMonth()+1);
	    var Day = "" + dt.getDate();
	    var TomorrowDay = "" + (dt.getDate()+1);
	    console.log(dt)
	    if(Month.length < 2) Month = "0" + Month;
	    if(Day.length < 2) Day = "0" + Day;
	    if(TomorrowDay.length < 2) TomorrowDay = "0" + TomorrowDay;
	   
	    var Today = Year.toString() +'-'+ Month + '-' + Day;
	   	var Tomorrow = Year.toString() +'-'+ Month + '-' + TomorrowDay;
	    document.getElementById("checkInDate").value = Today;
	    document.getElementById("checkOutDate").value = Tomorrow;
	}
	$(document).ready(function() {
	    $("#checkInDate").datepicker({
   		dateFormat:"yy-mm-dd"
	    });
	    $("#checkOutDate").datepicker({
   		dateFormat:"yy-mm-dd",
		defaultDate:+1
	    });
	});
</script>
</body>
</html>
