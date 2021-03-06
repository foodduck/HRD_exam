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
		sql = "update member_tbl_02 set custname=?, phone=?, address=?, joindate=?, grade=?, city=? where custno=?";
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, custname);
		stmt.setString(2, phone);
		stmt.setString(3, address);
		stmt.setString(4, joindate);
		stmt.setString(5, grade);
		stmt.setString(6, city);
		stmt.setInt(7, custno);
		int r = stmt.executeUpdate();
		
		if(r>0) {
			response.sendRedirect("index.jsp");
		} else {		
			response.sendRedirect("memberUpdate.jsp?custno="+custno);			
		}
		stmt.close();
		conn.close();
	} catch(Exception e) {
		e.printStackTrace();
		out.println("시스템 오류");
	}
%>	