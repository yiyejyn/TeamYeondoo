<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>OOTD</title>
  
  	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>


</head>
<body>
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
                        <li class="active">
                            <a href="#">TODAY</a>
                        </li>
                        <li>
                            <a href="mycloset.jsp">MY CLOSET</a>
                        </li>
                        <li>
                            <a href="<c:url value='login.jsp'/>"><span class="glyphicon glyphicon-log-in"></span> LOG-IN</a>
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
	
		<div class="carousel-inner">
			<!--슬라이드1-->
			<div class="item active"> 
				<img src="./resources/img/sample1.jpg" style="width:100%" alt="First slide">
				<div class="container">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<!--슬라이드1-->
	
			<!--슬라이드2-->
			<div class="item"> 
				<img src="./resources/img/sample2.jpg" style="width:100%" data-src="" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
			<!--슬라이드2-->
			
			<!--슬라이드3-->
			<div class="item"> 
				<img src="./resources/img/sample3.jpg" style="width:100%" data-src="" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Slide 3</h1>
						<p>텍스트 3</p>
					</div>
				</div>
			</div>
			<!--슬라이드3-->
		</div>
		
		<!--이전, 다음 버튼-->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
		<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>

</body>

</html>
