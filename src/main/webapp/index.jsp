<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@include file = "all_js.jsp" %>
    <title>HOME PAGE</title>
    <style>
  
</style>
  </head>
  <body>
  <%@include file = "navbar.jsp" %>
  <div class="container">
  <br>
    <br>
  <div class="card py-3">
  
  <img alt="" class="img-fluid mx-auto mb-2" style="max-width:400px" src="img/lists.png">
  <h2 class=" text-center mt-2" style="color: red;">START WRITING NOTES</h2>
  
  <div class=" mt-3 mb-3 container text-center">
  <button  class="btn text-white"  style="background: linear-gradient(to right, #ee0979, #ff6a00);" onclick="startTakingNotes()">START HERE</button>
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
   <script>
    function startTakingNotes() {
      window.location.href = "add_notes.jsp";
    }
  </script>
  </body>
</html>