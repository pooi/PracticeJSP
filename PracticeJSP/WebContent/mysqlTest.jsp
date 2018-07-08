<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
		Connection conn = DBConn.getMySqlConnection();
		out.print("db 연결 정보: " + conn);
		
		Statement stmt = conn.createStatement();
		
		String sql = "select * from user";
		stmt.executeQuery(sql);
		
		ResultSet rs = null;
		
		rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			do{
				out.print("<br>");
				out.print(rs.getString("id") + "<br>");
				out.print(rs.getString("name") + "<br>");
				out.print(rs.getString("major"));
			}while(rs.next());
		}else{
			out.print("검색 결과가 없습니다.");
		}
	
	%>

</body>
</html>