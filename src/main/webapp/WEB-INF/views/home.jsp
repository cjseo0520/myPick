<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="header.jsp"/>
<html>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css?after" />
</head>
<style>

</style>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
<script>
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
    
</script>



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
			                <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">대구광역시, 수성구<label class="inButton">클릭</label></label><li>
			                <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">인천광역시, 부평구<label class="inButton">클릭</label></label></li>
			                <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">광주광역시, 서구<label class="inButton">클릭<label></label></li>
		               		<li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">대전광역시, 서구<label class="inButton">클릭</label></label></li>
        			        <li id="hideClick"><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">울산광역시, 남구<label class="inButton">클릭</label></label></li>
			            </ul>
			        </li>
			    </ul>
			<div>
			    <div class="checkIn">
			    	<label>체크인</label>
			    </div>
			    
			    <div class="checkOut">
			    	<label>체크아웃</label>
			    </div>
		    </div>
	    </div>
	    
	</div>
	
<script>
    function getEventTarget(e) {
        e = e || window.event;
        return e.target || e.srcElement; 
    }

    var ul = document.getElementById('hide');
    ul.onclick = function(event) {
        var target = getEventTarget(event);
		test = target.innerText.replace("클릭", "")
        document.getElementById("citySelect").value=(test);
        var submenu = $(this).next("ul");
        submenu.slideDown();
    };
</script>
</body>
</html>
