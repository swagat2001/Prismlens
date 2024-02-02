<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration Page</title>
</head>
<body>
<% 
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String password = request.getParameter("password");

    try {
        System.out.println(email);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "admin");

        
        String qry = "INSERT INTO prism(name, email, mobile, pass) VALUES('" + name + "','" + email + "','" + mobile + "','" + password + "')";
        session.setAttribute("name", name);
        session.setAttribute("email", email);

        Statement smt = con.createStatement();
        int i = smt.executeUpdate(qry);
        
        if (i > 0) {
            response.sendRedirect("index.html?registrationSuccess=true"); // Redirect to index.html with registration success parameter
        } else {
            out.println("Your registration fails");
            response.sendRedirect("#");
        }
    } catch (Exception e) {
        out.println("Failed. Please try again!!");
        response.sendRedirect("#");
    }
%>
</body>
</html>