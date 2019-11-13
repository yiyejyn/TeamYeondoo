<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>#OOTD</title>
  
  	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div>
	<div>
		<nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <!-- 오른쪽 메뉴바 -->
                    <button type="button" class="collapsed navbar-toggle" data-toggle="collapse" data-target="#nav_menu" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        #OOTD
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="nav_menu">
                    <ul class="nav navbar-nav navbar-right" >
                        <li>
                            <a href="#">TODAY</a>
                        </li>
                        <li>
                            <a href="<c:url value='myPage'/>">MY PAGE</a>
                        </li>
                        <li>
                            <a href="login.html"><span class="glyphicon glyphicon-log-in"></span> LOG-IN</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
	</div>        
	<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
	
		<!--페이지-->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<!--페이지-->
	
		<div class="carousel-inner" style="height: 100%;">
			<!--슬라이드1-->
			<div class="item active"> 
				<img src="pic/outer_1.PNG" alt="First slide" style="display: inline-block; width: 33%;">
				<img src="pic/top_1.PNG" alt="First slide" style="display: inline-block; width: 33%;">
				<img src="pic/bottom_1.png" alt="First slide" style="display: inline-block; width: 33%;">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<!--슬라이드1-->
	
			<!--슬라이드2-->
			<div class="item"> 
				<img src="pic/outer_2.PNG" alt="First slide" style="display: inline-block; width: 33%;">
				<img src="pic/top_2.png" alt="First slide" style="display: inline-block; width: 33%;">
				<img src="pic/bottom_2.png" alt="First slide" style="display: inline-block; width: 33%;">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
			<!--슬라이드2-->
			
			<!--슬라이드3-->
			<div class="item"> 
				<img src="pic/outer_3.PNG" alt="First slide" style="display: inline-block; width: 33%;">
				<img src="pic/top_3.PNG" alt="First slide" style="display: inline-block; width: 33%;">
				<img src="pic/bottom_3.PNG" alt="First slide" style="display: inline-block; width: 33%;">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
			<!--슬라이드3-->
		</div>
		
		<!--이전, 다음 버튼-->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
		<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>	
	</div>
	<div style="margin-left: 10%; margin-right: 10%; margin-top: 4%;">
		<div style="font-size: 30px; margin-bottom: 3%; ">
			#Recommend ootd
		</div>
		<div style="margin-bottom: 8%;">
			<img src="pic/reootd_1.PNG" style="display: inline-block; width: 20%; margin-right: 5%;">
			<img src="pic/reootd_2.jpg" style="display: inline-block; width: 20%; margin-right: 5%;">
			<img src="pic/reootd_3.jpg" style="display: inline-block; width: 20%; margin-right: 5%;">
			<img src="pic/reootd_4.jpg" style="display: inline-block; width: 20%;">
		</div>
		<div style="margin-bottom: 8%;">
			<img src="pic/reootd_5.jpg" style="display: inline-block; width: 20%; margin-right: 5%;">
			<img src="pic/reootd_6.jpg" style="display: inline-block; width: 20%; margin-right: 5%;">
			<img src="pic/reootd_7.jpg" style="display: inline-block; width: 20%; margin-right: 5%;">
			<img src="pic/reootd_8.jpg" style="display: inline-block; width: 20%;">
		</div>
	</div>
		<footer>
			<hr>
			<p class="text-center">
				<small><strong>YeonDoo#OOTD</strong></small><br>
				<small>대표 : 연두 ㆍ 주소 :  서울 어딘가 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 064-123-1234</small><br>
				<small>Copyrightⓒ Team YeonDoo All rights reserved.</small>
			</p>
		</footer>
	</div>
</body>

</html>
