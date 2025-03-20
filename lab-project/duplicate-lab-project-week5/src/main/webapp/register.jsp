<html>
<body>
  <h2>Please Register</h2>
  <%-- Method post observable in developer tools --%>
  <%-- Note syntax for form action and method --%>
  <form action="welcome.jsp" method="post"> 
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
    <input type="submit" value="Submit">
  </form>
</body>
</html>
