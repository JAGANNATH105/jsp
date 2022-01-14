<%@page import="study.dao.bookpojo"%>
<%@page import="java.util.List"%>
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
<table border=1>

<thead>
<tr><th>book id</th><th> book cost</th><th>book name</th><th>book type</th></tr>

</thead>
<tbody>



<%
//call dao method ,it gives a list
bookdao dao=new bookdao();
List<bookpojo> list=dao.getallbooks();
for(bookpojo bp :list){
 %>
 <tr><td><%=bp.getBid() %></td><td><%=bp.getBcost() %></td><td><%=bp.getBname() %></td><td><%=bp.getType() %></td></tr>

<% } %>


</tbody>
</table>



</body>
</html>