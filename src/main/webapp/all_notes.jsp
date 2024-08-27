<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ALL NOTES</title>
 <%@include file = "all_js.jsp" %>
</head>
<body>
<%@include file = "navbar.jsp" %>
<div class="container">
  <br>
    <br>
  <h2 style="color: red;">ALL NOTES</h2>
  <div class="row">
  <div class="col-12">
    <%
    Session s = FactoryProvider.getFactory().openSession();
    Query q = s.createQuery("from Note");
    List<Note> list  = q.list();
    for(Note note : list)
    {
     %>
    <div class="card mt-3 p-2">
    <div class="card-body px-4">
    <img class="card-img-top  mb-4" style="max-width:100px;" src="img/lists.png"/>
    <h5 class="card-title"><%= note.getTitle().toUpperCase()  %></h5>
    <p class="card-text"><%=note.getContent().toUpperCase() %></p>
    <p class="card-date text-right"><b>LAST UPDATED : <%=note.getAddedDate() %></b></p>
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn mr-1 btn-danger">DELETE</a>
     <a href="edit.jsp?note_id=<%= note.getId()%>" style="background: #d64070" class="btn text-white">UPDATE</a>
  </div>
</div>
   <% 	
    }
  s.close();
  %>
  </div>
  </div>
</div>
 <footer class=" text-center text-white" style="margin-top:360px">
  <!-- Copyright -->
  <div class="text-center text-white p-3 " style="background:linear-gradient(to left, #ee0979, #ff6a00) ; color:white;">
    © 2024 COPYRIGHT : 
    <a class="text-body text-white " href="index.jsp">NOTE MAKER</a>
  </div>
  <!-- Copyright -->
</footer>
</body>
</html>