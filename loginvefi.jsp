<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
</head>
<body>
    <%
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        boolean loginSuccessful = false;
        String errorMessage = "";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            System.out.println("Before Established");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "admin");
            System.out.println("Connection established");
            String qry = "select * from prism where email='" + email + "'";
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery(qry);
            int veri = 0;
            while (rs.next()) {
                veri = 1;
                String pass = rs.getString("pass");
                if (password.equals(pass)) {
                    System.out.println("in password check");
                    // Store email in the session
                    session.setAttribute("email", email);
                    loginSuccessful = true;
                    response.sendRedirect("logined.html?loginSuccess=true"); // home page with login success parameter
                } else {
                    errorMessage = "Invalid credentials. Please try again.";
                }
            }
            if (veri == 0) {
                errorMessage = "Invalid credentials. Please try again.";
            }
            rs.close();
            smt.close();
            con.close();
        } catch (Exception e) {
            errorMessage = "An error occurred. Please try again.";
            out.println("failed try again!!"); // error page
            response.sendRedirect("index.html"); // index page
        }
    %>

    <%-- Display error message if login fails --%>
    <% if (!loginSuccessful) { %>
        <div style="color: red;"><%= errorMessage %></div>
    <% } %>
</body>
</html>
