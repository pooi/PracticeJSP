<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>include01.jsp 페이지 입니다.</h1>
<jsp:include page="include02.jsp" flush="true"></jsp:include>
<h1>다시 include01.jsp 페이지 입니다.</h1>

</body>
</html>