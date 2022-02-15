<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 메뉴</title>
<style>
	* {margin:0; padding:0}
	body, html {width:100%}
	ul {list-style:none;}
	a {text-decoration:none;}
	.wrap {margin: 0 auto; width:1200px; clear:both;}
	p {text-align:center}
	
	.hd {height:50px; width: 1200px; border-bottom:solid black 1px;}
	nav {clear:both;}
	.gnb {height: 24px; width: 1200px; margin:0 auto; text-align:center; border-bottom:solid black 1px;}
	.gnb li { float:left; width:300px;}
	.sec {width:100%; height:800px;}
	.ft {clear:both; width:100%; height:120px; border-top:solid 1px black;}
</style>
</head>
<body>
<div class="wrap">
	<header class="hd">
	<div class="hd_wrap">
		<p>쇼핑몰 회원관리 ver 1.0</p>
	</div>
	</header>
	<nav>
	<ul class="gnb">
		<li><a href="register.jsp">회원등록</a></li>
		<li><a href="memberList.jsp">회원목록 조회/수정</a></li>
		<li><a href="memberSales.jsp">회원매출조회</a></li>
		<li><a href="index.jsp">홈으로</a></li>
	</ul>
	</nav>
	<section class="sec">
		<div class="sec_wrap">
			
		</div>
	</section>
	<footer class="ft">
	<div class="ft_wrap">
		<p>All right Reserved.</p>
	</div>
	</footer>
</div>
</body>
</html>