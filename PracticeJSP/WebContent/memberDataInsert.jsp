<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.javalec.ex.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		try{
			Connection conn = DBConn.getMySqlConnection();
			int n;
			String query = "INSERT INTO member (id, name, pw) VALUES(?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			
			preparedStatement.setString(1, "abc");
			preparedStatement.setString(2, "홍길동");
			preparedStatement.setString(3, "123");
			n = preparedStatement.executeUpdate();

			preparedStatement.setString(1, "abcd");
			preparedStatement.setString(2, "홍길동");
			preparedStatement.setString(3, "123");
			n = preparedStatement.executeUpdate();
			
			if(n==1)
				out.println("Insert Success");
			else
				out.println("Insert Fail");
		}catch(Exception e){
			e.printStackTrace();
		}
	%>

	<br/>
	<a href="memberDataView.jsp">회원정보 보기</a>
</body>
</html>