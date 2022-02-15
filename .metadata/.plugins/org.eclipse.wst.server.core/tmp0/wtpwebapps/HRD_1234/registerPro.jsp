<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	int custno = Integer.parseInt(request.getParameter("custno"));
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String joindate = request.getParameter("joindate");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	
	Connection conn = null;
	PreparedStatement stmt = null;
	
	String url ="jdbc:oracle:thin:@localhost:1521:xe";
	String id ="system";
	String pw ="1234";
	String sql;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(url, id, pw);
		sql = "insert into member_tbl_02 values(?, ?, ?, ?, ?, ?, ?)";
		stmt = conn.prepareStatement(sql);
		stmt.setInt(1, custno);
		stmt.setString(2, custname);
		stmt.setString(3, phone);
		stmt.setString(4, address);
		stmt.setString(5, joindate);
		stmt.setString(6, grade);
		stmt.setString(7, city);
		int r = stmt.executeUpdate();
		
		if(r>0) {
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("register.jsp");
		}
		stmt.close();
		conn.close();
	} catch(Exception e) {
		e.printStackTrace();
		out.println("시스템 오류");
	}
%>	