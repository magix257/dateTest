<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.time.LocalDate" %>
<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>

<%

 		Date today = new Date();

GregorianCalendar calendar = new GregorianCalendar();

int dzien = calendar.get(Calendar.DAY_OF_MONTH);
int miesiac = calendar.get(Calendar.MONTH);
int rok = calendar.get(Calendar.YEAR);

Calendar cal = Calendar.getInstance();
Calendar cal2 = Calendar.getInstance();

int godzina = calendar.get(Calendar.HOUR_OF_DAY);
int minuta = calendar.get(Calendar.MINUTE);
int sekunda = calendar.get(Calendar.SECOND);

Date d2 = cal.getTime();


String data = String.valueOf(calendar.getTime());
SimpleDateFormat format1 = new SimpleDateFormat("hh-mm-ss");
SimpleDateFormat format2 = new SimpleDateFormat("hh-mm-ss-dd-MM-yyyy");
String data2 = format1.format(calendar.getTime());




long d = cal.getTimeInMillis();
String data3 = format1.format(d);

//cal2.set(Calendar.HOUR,1);
//cal2.set(Calendar.MINUTE,00);
//cal2.set(Calendar.SECOND,00);

long d3 = cal2.getTimeInMillis();

long d4 = d-3600000;

String data4 = format2.format(d4);

%>

<body>

Dzien is:  <%= dzien %>
<br><br>
Miesiąc is <%= miesiac+1 %>
<br><br>
Rok is <%= rok %>
<br><br>
Godzina is <%= godzina %>
<br><br>
Minuta is <%= minuta %>
<br><br>
Sekunda is <%= sekunda %>

<br><br>
Obecna godzina jest  <%= data3 %>

<br><br>
Godzina Obecna - 1 godzina jest <%= data4 %>

</body>
</html>