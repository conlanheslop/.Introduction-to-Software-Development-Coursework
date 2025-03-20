<html>
<%-- this file is an example of using the same view for two different purposes--%>
<%
    String name = request.getParameter("Name");
    String email = request.getParameter("Email Address");
    String password = request.getParameter("Password");
    String gender = request.getParameter("Gender");
    String colour = request.getParameter("Favourite Colour");
    String tos = request.getParameter("TOS");
    String submitted = request.getParameter("Submitted")
%>

<body bgcolor=<%=colour%>>
    <%-- checking if form has been submitted --%>
    <% if (submitted != null && submitted.equals("yes")) { %>

        <% if (tos != null && tos.equals("on")) { %>

            <h1>
                Welcome, <%= name %>, how are you?
            </h1>
            Your email is, <%= email%>! </br>
            Your password is, <%= password%>! </br>
            Your gender is, <%= gender%>! </br>
            Your favourite colour is, <%= colour%>! </br>
        
        <% } else { %>
            <h1>
            sorry you have to agree to our TOS </br>
            Click <a href="register.jsp">here</a> to go back. </br>
            </h1>
        <% } %>

    <% } else { %>
        
        <h2>Please Register</h2>
        <form action="one.jsp" method="post">
            <label>Email:</label><br>
            <input type="text" name="Email Address"><br>
            <label>Name:</label><br>
            <input type="text" name="Name"><br>
            <label>Password:</label><br>
            <input type="password" name="Password"><br>
            <label>Gender:</label><br>
            <input type="text" name="Gender"><br>
            <label>Favourite Colour:</label><br>
            <input type="text" name="Favourite Colour"><br>
            <label>TOS:</label><br>
            <input type="checkbox" name="TOS"><br>
            <input type="hidden" name="submitted" value="yes">
            <input type="submit" value="Submit">
        </form>

    <% } %>

    
    
</body>
</html>