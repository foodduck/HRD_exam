<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
	Date now = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyyMMdd");	
	String today = sf.format(now);
	
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	int m_custno = Integer.parseInt(request.getParameter("custno"));
	
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String url ="jdbc:oracle:thin:@localhost:1521:xe";
	String id ="system";
	String pw ="1234";
	String sql;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(url, id, pw);
		sql = "select * from member_tbl_02 where custno=?";
		stmt = conn.prepareStatement(sql);
		stmt.setInt(1, m_custno);
		rs = stmt.executeQuery();
		
		if(rs.next()) {
			int custno = rs.getInt("custno");
			String custname = rs.getString("custname");
			String phone = rs.getString("phone");
			String address = rs.getString("address");
			Date joindate = rs.getDate("joindate");
			String grade = rs.getString("grade");
			String city = rs.getString("city");
						
			

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 수정</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
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
	.sec_wrap {margin:0 auto;}
	table {width:100%; height:100%; border:solid 1px black; border-collapse:none;}
	
	
	.ft {clear:both; width:100%; height:120px; border-top:solid 1px black;}
</style>
<script>
	$(document).ready(function(){
		$("#submit").click(function(){
			if($("#custname").val()=="") {
				alert("회원성명이 입력되지 않았습니다.");
				$(this).focus();
			}
			else if($("#phone").val()=="") {
				alert("전화번호가 입력되지 않았습니다.");
				$(this).focus();
			}
			else if($("#address").val()=="") {
				alert("주소가 입력되지 않았습니다.");
				$(this).focus();
			}
			else if($("#grade").val()=="") {
				alert("회원등급이 입력되지 않았습니다.");
				$(this).focus();
			}
			else if($("#city").val()=="") {
				alert("도시코드가 입력되지 않았습니다.");
				$(this).focus();
			}
			
			/* var exp = /^[가-힣]{2,5}$/;
			
			if(!exp.test($("#custname"))){
				
				alert("2-5글자의 한글만 입력 가능합니다.");
				$("#custname").focus();
				return;
			}
			exp =/(\d{3}).*(\d{3}).*(\d{4})/;
			
			if(!exp.test($("#phone"))){
				
				alert("2-5글자의 한글만 입력 가능합니다.");
				$("#phone").focus();
				return;
			} */
		});
	});
</script>
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
		<li><a href="makecustNo.jsp">회원등록</a></li>
		<li><a href="memberList.jsp">회원목록 조회/수정</a></li>
		<li><a href="memberSales.jsp">회원매출조회</a></li>
		<li><a href="index.jsp">홈으로</a></li>
	</ul>
	</nav>
	<section class="sec">
		<div class="sec_wrap">
		<h1>홈쇼핑 회원 수정</h1>
			<form action="memberUpdatePro.jsp" method="post">
				<table>
					<tbody>
						<tr>
							<td>회원번호</td>
							<td><input type="text" alert="회원번호" name="custno" id="custno" value="<%=custno %>" readonly ></td>
						</tr>
						<tr>
							<td>회원성명</td>
							<td><input type="text" alert="회원성명" name="custname" id="custname" value="<%=custname %>" autofocus ></td>
						</tr>
						<tr>
							<td>회원전화</td>
							<td><input type="text" alert="회원전화" name="phone" id="phone" value="<%=phone %>"></td>
						</tr>
						<tr>
							<td>회원주소</td>
							<td><input type="text" alert="회원주소" name="address" id="address" value="<%=address %>"></td>
						</tr>
						<tr>
							<td>가입일자</td>
							<td><input type="text" alert="가입일자" name="joindate" id="joindate" value="<%=sf.format(joindate) %>" readonly ></td>
						</tr>
						<tr>
							<td>고객등급[A:VIP,B:일반,C:직원]</td>
							<td><input type="text" alert="고객등급" name="grade" id="grade" value="<%=grade %>"></td>
						</tr>
						<tr>
							<td>도시코드</td>
							<td><input type="text" alert="도시코드" name="city" id="city" value="<%=city %>"></td>
						</tr>
						<tr>
							<td></td>
							<td><button type="submit" id="submit">수정</button>&nbsp;&nbsp;<button>조회</button></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</section>
	<footer class="ft">
		<div class="ft_wrap">
			<p>All right Reserved.</p>
		</div>
	</footer>
<%
			rs.close();
			stmt.close();
			conn.close();
		} else {
			response.sendRedirect("index.jsp");
		}
		} catch(Exception e) {
			e.printStackTrace();
			out.println("시스템 오류");
		}
%>
</div>
</body>
</html>