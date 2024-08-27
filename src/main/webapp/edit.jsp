<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT PAGE</title>
  <%@include file = "all_js.jsp" %>
</head>
<body>
 <%@include file = "navbar.jsp" %>
 <div class="container">
   <br>
     <br>
  <h4 style="color: red;">EDIT CAREFULLY</h4>

  <%
  int noteId  = Integer.parseInt(request.getParameter("note_id").trim());
  Session s = FactoryProvider.getFactory().openSession();
  Note note = (Note)s.get(Note.class, noteId);
  %>  
  <!-- Form -->
  <form action="UpdateServlet" method="post">
  
  <input value="<%=note.getId() %>" name="noteId" type="hidden" />
  <div class="form-group">
    <label for="title">NOTE TITLE</label>
    <input value="<%= note.getTitle().toUpperCase()%>"name="title" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="ENTER HERE">
  </div>
  <div class="form-group">
    <label for="content">NOTE CONTENT</label>
    <textarea name="content" required style="height:200px" class="form-control" id="note-content" placeholder="ENTER YOUR CONTENT HERE "><%= note.getContent().toUpperCase() %></textarea>
    
    
  </div>
  
  <div class="container text-center">  <button type="submit" class="btn text-white"  style="background: linear-gradient(to right, #ee0979, #ff6a00);">SAVE</button> </div>
</form>
 
  
  
  
  
  
  </div>
   <footer class=" text-center text-white" style="margin-top:520px">
  <!-- Copyright -->
  <div class="text-center text-white p-3 " style="background:linear-gradient(to left, #ee0979, #ff6a00) ; color:white;">
    © 2024 COPYRIGHT : 
    <a class="text-body text-white " href="index.jsp">NOTE MAKER</a>
  </div>
  <!-- Copyright -->
</footer>

</body>
</html>