<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <%@include file = "all_js.jsp" %>
    <title>ADD NOTES</title> 
  </head>
<body>
  <%@include file = "navbar.jsp" %>
<div class="container">
  <br>
  <br>
  <h2 style = "color: red;">PLEASE FILL YOUR NOTE DETAILS </h2>
  <br>
  <!-- Form -->
  <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">NOTE TITLE</label>
    <input name="title" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="ENTER HERE">
  </div>
  <div class="form-group">
    <label for="content">NOTE CONTENT</label>
    <textarea name="content" required style="height:200px" class="form-control" id="note-content" placeholder="ENTER YOUR CONTENT HERE "></textarea>
  </div>
  
  <div class="container text-center">  <button type="submit" class="btn text-white" style="background: linear-gradient(to right, #ee0979, #ff6a00);">ADD</button> </div>
</form>
  </div>
   <footer class=" text-center text-white" style="margin-top:500px">
  <!-- Copyright -->
  <div class="text-center text-white p-3 " style="background:linear-gradient(to left, #ee0979, #ff6a00) ; color:white;">
    © 2024 COPYRIGHT : 
    <a class="text-body text-white " href="index.jsp">NOTE MAKER</a>
  </div>
  <!-- Copyright -->
</footer>
</body>
</html>