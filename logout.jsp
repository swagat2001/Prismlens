<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout Page</title>
<script>
    // Function to show logout alert
    function showLogoutAlert() {
        alert("You have been logged out successfully!");
    }
</script>
</head>
<body>

<%
    // Clear the email session attribute
    session.setAttribute("email", "");
    // Redirect to index.html with a logout success parameter
    response.sendRedirect("index.html?logoutSuccess=true");
%>

<script>
    // Call the showLogoutAlert function after the server-side processing is done
    showLogoutAlert();
</script>

</body>
</html>
