<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="header.jsp"/>
<html>
<style>
.mainBody {
	border: 1px solid;
	width: 1200px;
	height: 800px;
	margin: auto;
	margin-top: 20px;
}

.mainSearch {
	border: 1px solid red;
	width: 800px;
	height: 500px;
	margin: auto;
	margin-top: 100px;
}

.city {
	border: 1px solid;
	width: 500px;
	height: 100px;
	margin: auto;
	margin-top: 30px;
	font-size: 20pt;
}

.cheackDate {
	border: 1px solid;
}

.type {
	border: 1px solid;
}

ul {
	list-style: none;
	padding: 0;
}

.hide {
	border: 1px solid green;
	display: none;
	list-style: none;
	padding: 0;
	width: 500px;
	height: 190px;
	margin: auto;
}

.hiddenImg {
	width: 25px;
	height: 20px;
}

.hiddenCity {
	font-size: 15pt;
	cursor: pointer;
}
.citySelect{
    width: 400px;
    height: 40px;
    margin: auto;
    margin-left: 10px;
}
.serchImg{
    width: 60px;
    height: 50px;
}
.serchCss{
	width: 60px;
    height: 50px;
    float: left;
}
.inButton{
	float: right;
	cursor: pointer;
}
a {
	color : blackl;
	text-decoration: none;
}
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: none;}

</style>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
<script>
    // html dom 이 다 로딩된 후 실행된다.
    $(document).ready(function(){
        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".menu>div").click(function(){
            var submenu = $(this).next("ul");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
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
			            <ul class="hide">
			                <a href="#"><li><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">서울특별시, 강남구 <label class="inButton">클릭</label></label></li></a>
			                <a href="#"><li><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">부산광역시, 진구<label class="inButton">클릭</label></label></li></a>
			                <a href="#"><li><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">대구광역시, 수성구<label class="inButton">클릭</label></label><li></a>
			                <a href="#"><li><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">인천광역시, 부평구<label class="inButton">클릭</label></label></li></a>
			                <a href="#"><li><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">광주광역시, 서구<label class="inButton">클릭<label></label></li></a>
		               		<a href="#"><li><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">대전광역시, 서구<label class="inButton">클릭</label></label></li></a>
        			        <a href="#"><li><label class="hiddenCity"><img src="${pageContext.request.contextPath }/img/gps.png" class="hiddenImg">울산광역시, 남구<label class="inButton">클릭</label></label></li></a>
			            </ul>
			        </li>
			    </ul>
	    </div>
	</div>
<!-- 				<li> -->
<!-- 					<div class="totalSearch">지역명, 도시명, 숙박지명</div> -->
<!-- 					<div class="totalSearch">예) 서울특별시</div> -->
<!-- 				</li> -->
<!-- 			<ul class="cheackDate"> -->
<!-- 				<li></li> -->
<!-- 				<li></li> -->
<!-- 			</ul> -->
<!-- 			<ul class="type"> -->
<!-- 				<li></li> -->
<!-- 		</div> -->
<!-- 	</div> -->
</body>
</html>
