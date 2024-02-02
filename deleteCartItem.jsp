<%@ page import="java.sql.*" %>

<%
String cartJdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String cartUsername = "system";
String cartPassword = "admin";

Connection cartConnection = null;
PreparedStatement deleteCartPreparedStatement = null;

try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    cartConnection = DriverManager.getConnection(cartJdbcUrl, cartUsername, cartPassword);

    String productDescription = request.getParameter("productDescription");
    double productPrice = Double.parseDouble(request.getParameter("productPrice"));
    String productImageLink = request.getParameter("productImageLink");

    String deleteCartQuery = "DELETE FROM cart WHERE email = ? AND product_description = ? AND product_price = ? AND product_image_link = ?";
    deleteCartPreparedStatement = cartConnection.prepareStatement(deleteCartQuery);

    String userEmail = (String) session.getAttribute("email");
    deleteCartPreparedStatement.setString(1, userEmail);
    deleteCartPreparedStatement.setString(2, productDescription);
    deleteCartPreparedStatement.setDouble(3, productPrice);
    deleteCartPreparedStatement.setString(4, productImageLink);

    deleteCartPreparedStatement.executeUpdate();
} catch (Exception e) {
    e.printStackTrace();
} finally {
    try {
        if (deleteCartPreparedStatement != null) deleteCartPreparedStatement.close();
        if (cartConnection != null) cartConnection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

// Redirect back to the cart view page after deleting
response.sendRedirect("cartview.jsp");
%>
