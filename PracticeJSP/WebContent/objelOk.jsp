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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	
	아이디: <%=id %><br/>
	비밀번호: <%=pw %>
	
	<hr/>
	
	아이디: ${ param.id }<br/>
	비밀번호: ${ param.pw }<br/>
	아이디: ${ param["id"] }<br/>
	비밀번호: ${ param["pw"] }<br/>
	
	<hr/>
	
	applicationScope: ${ applicationScope.application_name }<br/>

</body>
</html>