<%@page import="model.User"%>

<html>

<%
    String name = request.getParameter("Name");
    String email = request.getParameter("Email Address");
    String password = request.getParameter("Password");
    String gender = request.getParameter("Gender");
    String colour = request.getParameter("Favourite Colour");
    String tos = request.getParameter("TOS");

    // User JavaBean instance
    User user = new User(name, email, password, gender, colour);
    session.setAttribute("user", user);

%> 

<body bgcolor=<%=colour%>>
    
    <%-- if tos is agreed to --%>
    <%
        if (tos != null && tos.equals("on")) {
    %>

        <h1>
            Welcome, <%= name %>, how are you?
        </h1>
        Your email is, <%= email%>! </br>
        Your password is, <%= password%>! </br>
        Your gender is, <%= gender%>! </br>
        Your favourite colour is, <%= colour%>! </br>
        Click <a href="index.jsp">here</a> to proceed to the main page. <br />


    <%-- if tos isn't agreed to --%>
    <%
        } else {
    %>

        sorry you have to agree to our TOS </br>
        Click <a href="register.jsp">here</a> to go back. </br>

    <%
        }
    %>

    
</body>
</html>
