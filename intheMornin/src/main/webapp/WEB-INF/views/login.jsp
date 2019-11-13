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
                    <a class="navbar-brand" href="">
                        #OOTD
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="nav_menu">
                    <ul class="nav navbar-nav navbar-right" >
                        <li>
                            <a href="home.jsp">TODAY</a>
                        </li>
                        <li>
                            <a href="mycloset.jsp">MY PAGE</a>
                        </li>
                        <li>
                            <a href="#"><span class="glyphicon glyphicon-log-in"></span> LOG-IN</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
	<div class="container" style="margin-top:8%; margin-bottom: 8%; border: 1px solid lightgray; width: 20%;">
        <div>
		<div class="card-title" style="margin-top:30px;" >
			<h3 class="card-title text-center" style="color:#113366;">Welcome to #OOTD</h3>
		</div><br>
		<div class="card-body">
        <form class="form-signin" method="POST" onSubmit="logincall();return false">
            <label for="inputEmail" class="sr-only">Your ID</label>
            <input type="text" id="uid" class="form-control" placeholder="이메일 주소" required autofocus><BR>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="upw" class="form-control" placeholder="비밀번호" required><br>
            <button id="btn-Yes" class="btn btn-lg btn-default btn-block" type="submit">로 그 인</button>
            <hr>
            <p class="izU2O" style="text-align: center;">계정이 없으신가요? <a href="/accounts/emailsignup/">가입하기</a></p>
        </form>
        </div>
		</div>
    </div>

	<div class="modal"></div>
    <footer><hr>
        <p class="text-center">
            <small><strong>YeonDoo#OOTD</strong></small><br>
            <small>대표 : 연두 ㆍ 주소 :  서울 어딘가 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 064-123-1234</small><br>
            <small>Copyrightⓒ Team YeonDoo All rights reserved.</small>
        </p>
    </footer>  
</body>
</html>