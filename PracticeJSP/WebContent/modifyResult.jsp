<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%! String name, id, pw; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		name = (String)session.getAttribute("name");
	%>
	
	<%= name %>님의 회원정보가 정상적으로 수정되었습니다.<br/>
	<a href="logoutSql.jsp">로그아웃</a> &nbsp;&nbsp; <a href="modify.jsp">회원정보 수정</a>

</body>
</html>