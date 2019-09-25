<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>

<%

 		Date today = new Date();

SimpleDateFormat intlFormat = new SimpleDateFormat("dd-MM-yyyy");
String intlToday = intlFormat.format(today);


%>

<body>

Today is:  <%= today %>
<br><br>
Today is <%= intlToday %>

</body>
</html>