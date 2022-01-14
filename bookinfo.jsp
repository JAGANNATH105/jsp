<%@page import="study.dao.bookpojo"%>
<%@page import="study.dao.bookdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="">
enter the bookid <input type="text" name="bookid"/>
<input type="submit" name="showbookinfo"/>
</form>
<%
String id=request.getParameter("bookid");
if(id!=null)
{
	//call the dao get the do/pojo
	bookdao dao=new bookdao();
	bookpojo pojo=dao.getbookinfo(Integer.parseInt(id));
	%>
	<%= pojo %>
<% }%>



</body>
</html>