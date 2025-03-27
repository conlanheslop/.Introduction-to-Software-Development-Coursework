<%@page import="model.User"%>

<html>



<body>
    <h3>Diary Keeper</h3>
    <%
        User user = (User) session.getAttribute("user");
        if (user != null) {
    %>
        <p align="right"> You are logged in as <%= user.getName() %> &lt<%= user.getEmail() %>&gt<br/>
        <a style="float:right" href="logout.jsp">Logout</a>

    <% } else { %>
        <p align="right"> You are not logged in <br/>
        <a style="float:right" href="logout.jsp">Logout</a>


    <% } %>
    
</body>
</html>