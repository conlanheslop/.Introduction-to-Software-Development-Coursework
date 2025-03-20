<html>

<% 
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String password = request.getParameter("password");
  String gender = request.getParameter("gender");
  String colour = request.getParameter("colour");
  String tos = request.getParameter("tos");
  String submitted = request.getParameter("submitted");
%>

<body>

  <%
    if (submitted != null && submitted.equals("yes")){
  %>

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
        Click <a href = "one.jsp">here</a> to go back.
      </h1>

    <% } %>

  <% } else { %>

  <h2>Please Register</h2>
  <%-- Method post observable in developer tools --%>
  <%-- Note syntax for form action and method --%>
  <form action="one.jsp" method="post"> 
    <label>Email: </label><br>
    <input type="text" name="email"><br>
    <label>Name: </label><br>
    <input type="text" name="name"><br>
    <label>Password: </label><br>
    <input type="password" name="password"><br>
    <label>Gender: </label><br>
    <input type="text" name="gender"><br>
    <label>Favorite Colour: </label><br>
    <input type="text" name="colour"><br>
    <label>Tos: </label><br>
    <input type="checkbox" name="tos"><br>
    <input type="hidden" name="submitted" value="yes"><br>
    <input type="submit" value="Submit">
  </form>

  <% } %>

</body>
</html>
