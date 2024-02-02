<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="./resources/Logo/favicon-32x32.png" />
    <!-- styesheet css -->
    <link rel="stylesheet" href="./src/css/style.css" />
    <!-- font awesome -->
    <script src="https://kit.fontawesome.com/ddac256733.js" crossorigin="anonymous"></script>
    <!-- bootstrap css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- icon link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <!-- chatbot -->
    <link rel="stylesheet" href="src/css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>PrismLens</title>
    <style>
    
    	.order-container-top-top-top{
    		margin-top: 20px;
    		display: flex;
    		flex-direction: row;
    		flex-wrap: wrap;
    		justify-content: space-around;
    	}
    	.order-container-top{
    		border: solid 2px #ccc;
    		width: 250px;
    		height: 300px;
    		border-radius: 5px;
    		margin: 10px;
    		margin-top: 20px;
    		padding: 10px;
    		padding-left: 15px;
    		box-shadow: inset 0 0 5px rgb(127, 226, 114);
    		transition: box-shadow 0.2s ease, border-radius 0.3s ease,transform 0.3s ease;
    	}
    	.order-container-top:hover {
		    box-shadow: 0 0 10px lightgreen;
		    border-radius: 10px;
		    transform: scale(1.05);
		}
    	.order-container-top img{
    	 max-width: 200px;
    	 height: 90px;
    	}
    	#order-price-xx-eef{
    	color: red;
        font-weight: bolder;
    	}
    	#order-price-xx-eeff{
    	color: blue;
        font-weight: bolder;
    	}
    	#order-price-xx-eefff{
    	color: black;
        font-weight: bolder;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        
    	}
    	.order-container-top p{
    		color: black;
    		text: bold;
    	}
    	
        
    </style>
</head>
<script>
        // Get the query parameter from the URL
        function getQueryVariable(variable) {
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            for (var i = 0; i < vars.length; i++) {
                var pair = vars[i].split("=");
                if (pair[0] == variable) {
                    return pair[1];
                }
            }
            return null;
        }

        // Show alert if the "loginSuccess" parameter is present in the URL
        var loginSuccess = getQueryVariable("loginSuccess");
        if (loginSuccess === "true") {
            alert("Login successful!");
        }
    </script>
<body>
    <!-- ----- navbar started ----- -->
    
    <div class="main-div">
        <!-- first part -->
        <div id="header" class="header">
            <div class="start">
                <img src="./resources/Logo/PrismLensLogo.png" class="logo" />
            </div>
            <div class="search-bar">
                <input type="text" class="search-input" placeholder="What are you looking for .....">
                <i class="fa-solid fa-magnifying-glass fa-sm" id="search-icon"></i>
                <!-- <i class="fa-solid fa-microphone-slash fa-sm" id="mic-icon"></i> -->
            </div>
            <div class="end">
                <nav>
                    <ul id="card">
                        <li class="btnhover" onclick="togglePopupsignup()" id="largescreen">
                            Logout<span></span><span></span><span></span><span></span>
                        </li>
                        <div class="overlaysignup" onclick="togglePopupsignup()"></div>
                        <div id="signup-popup">
                            <div id="signup-form">
                                <h2>Logout</h2>
                                <form action="logout.jsp" method="post">
                                    <h2>Are you sure logout</h2>
                                    <button type="submit">Logout</button>
                                </form>
                            </div>
                        </div>
                        <i class="fas fa-times" id="stop" onclick="closemenu()"></i>
                        <li class="btnhover" onclick="trackorder()" id="largescreen">
                            <a href='ordered.jsp'>Order</a><span></span><span></span><span></span><span></span>
                        </li>
                        <li class="btnhover" onclick="" id="largescreen">
                            wishlist<span></span><span></span><span></span><span></span>
                        </li>
                        <li class="btnhover" onclick="" id="largescreen">
                            <a href="cartview.jsp">Cart</a><span></span><span></span><span></span><span></span>
                        </li>
                        <!-- responsive part right side navbar -->
                        <li class="sidemenu">
                            <button class="btn btn5" onclick="togglePopupsignup()">
                                Logout
                            </button>
                        </li>
                        <li class="sidemenu"><a href='ordered.jsp'>Order</a></li>
                        <li class="sidemenu">
                            <i class="fa-regular fa-heart fa-2xs"></i><a href="#wishlist"> Wishlist</a>
                        </li>
                        <li class="sidemenu">
                            <i class="fa-solid fa-cart-shopping fa-2xs"></i><a href="cartview.jsp"> Cart</a>
                        </li>
                        <li class="sidemenu">
                            <a href="#notification">Manage Notification</a>
                        </li>
                        <li class="sidemenu">
                            <a href="#contactus">Contact Us</a>
                        </li>
                        <!-- shop now -->
                        <p class="sidemenu" id="shopnow">SHOP NOW</p>
                        <li class="sidemenu">
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    onclick="toggle(this)">Mens</button>
                                <div class="dropdown-menu" id="dropmenu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">EYEGLASSES</a>
                                    <a class="dropdown-item" href="#">COMPUTER GLASSES</a>
                                    <a class="dropdown-item" href="#">SUN GLASSES</a>
                                    <a class="dropdown-item" href="#">CONTACT LENSES</a>
                                </div>
                            </div>
                        </li>
                        <li class="sidemenu">
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    onclick="toggle(this)">Mens</button>
                                <div class="dropdown-menu" id="dropmenu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">EYEGLASSES</a>
                                    <a class="dropdown-item" href="#">COMPUTER GLASSES</a>
                                    <a class="dropdown-item" href="#">SUN GLASSES</a>
                                    <a class="dropdown-item" href="#">CONTACT LENSES</a>
                                </div>
                            </div>
                        </li>
                        <li class="sidemenu">
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    onclick="toggle(this)">Mens</button>
                                <div class="dropdown-menu" id="dropmenu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">EYEGLASSES</a>
                                    <a class="dropdown-item" href="#">COMPUTER GLASSES</a>
                                    <a class="dropdown-item" href="#">SUN GLASSES</a>
                                    <a class="dropdown-item" href="#">CONTACT LENSES</a>
                                </div>
                            </div>
                        </li>
                        <p class="sidemenu" id="services">OUR SERVICES</p>
                        <li class="sidemenu">
                            <a href="#freehometrail">Free Home Trail</a>
                        </li>
                        <li class="sidemenu">
                            <a href="#homeeyecheckup">Home Eye Check-Up</a>
                        </li>
                        <li class="sidemenu">
                            <a href="#Storelocator">Store Locator</a>
                        </li>
                        <p class="sidemenu" id="highlights">HIGHLIGHTS</p>
                        <li class="sidemenu">
                            <a href="#Checkframesize">Check Frame Size</a>
                        </li>
                        <li class="sidemenu">
                            <a href="#goldmembership">Gold Membership</a>
                        </li>
                        <li class="sidemenu">
                            <a href="#tryframesin3d">Try Frames in 3D</a>
                        </li>
                        <li class="sidemenu">
                            <a href="#downloadapps">Download Apps</a>
                        </li>
                        <p class="sidemenu" id="faq">FAQ's & POLICIES</p>
                        <li class="sidemenu">
                            <a href="#frequently">Frequently Asked Questions</a>
                        </li>
                        <li class="sidemenu">
                            <a href="#cancellation">Cancellation & Return Policy</a>
                        </li>
                        <li class="sidemenu">
                            <a href="#cobrowsing">Cobrowsing</a>
                        </li>
                    </ul>
                    <i class="fas fa-bars" id="start" onclick="openmenu()"></i>
                </nav>
            </div>
        </div>

        <!-- second part -->
        <div id="leftright" class="leftright">
            <div class="left">
                <ul>
                    <li><a href="#">EYE GLASSES</a></li>
                    <li><a href="#">COMPUTER GLASSES</a></li>
                    <li><a href="#">KIDS GLASSES</a></li>
                    <li><a href="#">CONTACT LENSES</a></li>
                    <li><a href="#">SUN GLASSES</a></li>
                    <li><a href="#">HOME EYE-TEST</a></li>
                    <li><a href="#">STORE LOCATOR</a></li>
                </ul>
            </div>
            <div class="right">
                <a href="http://127.0.0.1:5000/" ><button class="btn btn1" id="firstbtn">3D
                        TRY</button></a>
                <button class="btn btn2" id="secondbtn">BLU</button>
                <button class="btn btn3" id="thirdbtn">GOLD</button>
            </div>
        </div>

<div class='order-container-top-top-top'>

<%
// Database connection parameters for orders
String ordersJdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String ordersUsername = "system";
String ordersPassword = "admin";

// JDBC connections for orders
Connection ordersConnection = null;
PreparedStatement ordersPreparedStatement = null;
ResultSet ordersResultSet = null;

try {
    // Load the JDBC driver for orders
    Class.forName("oracle.jdbc.driver.OracleDriver");

    // Establish the connection for orders
    ordersConnection = DriverManager.getConnection(ordersJdbcUrl, ordersUsername, ordersPassword);

    // Fetch all orders from the orders table
    String selectOrdersQuery = "SELECT * FROM orders";
    ordersPreparedStatement = ordersConnection.prepareStatement(selectOrdersQuery);
    ordersResultSet = ordersPreparedStatement.executeQuery();

    // Display orders

    while (ordersResultSet.next()) {
        String userEmail = ordersResultSet.getString("user_email");
        String orderDescription = ordersResultSet.getString("product_description");
        double orderPrice = ordersResultSet.getDouble("product_price");
        String orderImageLink = ordersResultSet.getString("product_image_link");
        Timestamp orderTimestamp = ordersResultSet.getTimestamp("order_timestamp");
	
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat timeFormat = new SimpleDateFormat("hh:mm a");
        
        String formattedDate = dateFormat.format(orderTimestamp);
        String formattedTime = timeFormat.format(orderTimestamp);
        // Display order details in a container with image
        out.println("<div class='order-container-top-top'>");
        out.println("<div class='order-container-top'>");
        out.println("<img src='" + orderImageLink + "' alt='Product Image' class='order-image'>");
        out.println("<p>Product: " + orderDescription + "</p>");
        out.println("<p id='order-price-xx-eef'>Price: " + orderPrice + "</p>");
        out.println("<p id='order-price-xx-eeff'>Date: " + formattedDate + "</p>");
        out.println("<p id='order-price-xx-eefff'>Time: " + formattedTime + "</p>");
        out.println("</div>");
        out.println("</div>");
    }


} catch (Exception e) {
    e.printStackTrace();
} finally {
    // Close the resources for orders
    try {
        if (ordersResultSet != null) ordersResultSet.close();
        if (ordersPreparedStatement != null) ordersPreparedStatement.close();
        if (ordersConnection != null) ordersConnection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>

</div>
</body>

</html>
