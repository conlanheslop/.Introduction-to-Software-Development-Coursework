<html>
<% 
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String password = request.getParameter("password");
  String gender = request.getParameter("gender");
  String colour = request.getParameter("colour");
  String tos = request.getParameter("tos");
%>
<body bgcolor = <%= colour %> >

<% 
  if (tos != null && tos.equals("on")) {
%>

<h1>
  Welcome, <%= name %>, good day!</br>
  Your Email is <%= email %>.</br>
  Your password is <%= password %>.</br>
  Your gender is <%= gender %>.</br>
  Your favourite colour is <%= colour %>.</br>
</h1>

<% } else { %>

<h1> 
  Sorry, you have to agree to our TOS </br>
  Click <a href = "register.jsp">here</a> to go back.
</h1>

<% } %>
</body>
</html>