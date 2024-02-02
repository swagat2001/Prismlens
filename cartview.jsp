<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="./resources/Logo/favicon-32x32.png" />
    <!-- styesheet css -->
    <link rel="stylesheet" href="./src/css/style.css" />
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
        .cart-view-uper-uper{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .cart-view-con-con{
			border: solid 2px lightblue;
            border-radius: 5px;
            box-shadow: 5px 5px 10px lightblue;
            height: 30%;
            width: 45%;
            margin-top: 40px;
            margin-bottom: 10px;
            display: flex;
            justify-content: center;
            transition: transform 0.5s ease,box-shadow 0.5s ease,border-radius 0.5s ease;
        }
        .cart-view-con-con:hover{
            transform: scale(1.05);
            box-shadow: 0 0 10px black;
            border-radius: 15px;
        }
        .image-cart-cart-cart{
			height: 300px;
			width: 400px;
        }
		.desc-desc-desc3{
			font-size: 25px;
            color: rgb(0, 0, 0);
            margin-left: 110px;
            text-decoration: underline;
            text-transform: uppercase;
		}
		.desc-desc-desc3-2{
			font-size: 20px;
            color: rgb(185, 17, 17);
            margin-left: 80px;
            font-weight: bolder;

		}
		.button-container {
		    display: flex;
		    justify-content: space-between; /* Adjust this property based on your layout preferences */
            margin-left: -106px;
		  }
        .bttnx-3{
        	padding: 5px;
            margin-left: 88px;
            background: rgb(25, 161, 210);
            font-size: x-large;
            border-radius: 3px;
            transition: background 0.5s ease,border-radius 0.3s ease,box-shadow 0.5s ease;
        }
        .bttnx-3:hover{
            cursor: pointer;
            border-radius: 20px;

            background: linear-gradient(
                rgb(145, 232, 232),
                rgb(25, 161, 210),
                rgb(25, 161, 210),
                rgb(145, 232, 232)
            );
            box-shadow: 0 0 10px black;
        }
        @media screen and (max-width: 768px) {
        .cart-view-con-con {
            width: 100%; /* Adjust based on your needs */
        }

        .desc-desc-desc3,
        .desc-desc-desc3-2,
        .bttnx-3
        {
            margin-left: 0;
            text-align: center;
        }

        .button-container {
        margin-left: 0; /* Remove the left margin on smaller screens */
    }
    }
    
    
    .hello-hello-hello-hello{
        	margin-top: 30px;
            color: black;
            font-size: xx-large;
        }
        .head-xx-xx11-11{
        	margin-top: 50px;
	        height: 50%;
	        width: 50%;
            align-items: center;
            margin-left:570px;
        }
        .head1-xx-xx11-11{
        	height: 100px;
	        width: 400px;
	        border-radius: 50%;
	        
	        padding: 0px;
        }
        .hellheleolehe{
        	height: 100px;
	        width: 400px;
	        border-radius: 10px;
	        background-color: rgb(36, 125, 204);
	        box-shadow: inset 0 0 30px rgb(0, 0, 0);
	        font-size: 20px;
	        box-shadow: 5px 5px 10px rgb(80, 157, 196);
            transition: transform 0.7s ease,box-shadow 0.7s ease;
            text-decoration: underline;
            color: black;
            margin-left: -73px;
	        
        }
        .hellheleolehe:hover{
        	transform: scale(1.01);
            box-shadow: 0 0 30px black;
        }
        @media only screen and (max-width: 768px) {
    .head-xx-xx11-11 {
        margin-left: 0; /* Adjusted margin for responsiveness */
    }
}
    </style>

</head>
<body>

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

<div class='cart-view-uper-uper'>

<%
// Database connection parameters for cart
String cartJdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String cartUsername = "system";
String cartPassword = "admin";

// JDBC connections for cart
Connection cartConnection = null;
PreparedStatement cartPreparedStatement = null;
ResultSet cartResultSet = null;

try {
    // Load the JDBC driver for cart
    Class.forName("oracle.jdbc.driver.OracleDriver");

    // Establish the connection for cart
    cartConnection = DriverManager.getConnection(cartJdbcUrl, cartUsername, cartPassword);

    // Create a prepared statement for fetching data from the cart table
    String cartQuery = "SELECT * FROM cart WHERE email = ?";
    cartPreparedStatement = cartConnection.prepareStatement(cartQuery);
    String userEmail = (String) session.getAttribute("email"); // Retrieve user email from the session

    if (userEmail != null && !userEmail.isEmpty()) {
        cartPreparedStatement.setString(1, userEmail);
        cartResultSet = cartPreparedStatement.executeQuery();
		
        
        boolean cartIsEmpty = true;
        // Display cart items
        while (cartResultSet.next()) {
            String productDescription = cartResultSet.getString("product_description");
            double productPrice = cartResultSet.getDouble("product_price");
            String productImageLink = cartResultSet.getString("product_image_link");

            // Display cart item information
            out.println("<div class='cart-view-con-con'>");
            out.println("<div class='cart-view-con'>");
            out.println("<img src='" + productImageLink + "' alt='Product Image' class='image-cart-cart-cart'>");
            out.println("<p class='desc-desc-desc3'>" + productDescription + "</p>");
            out.println("<p class='desc-desc-desc3-2'>RS: " + productPrice + "</p>");
			
            // Button for placing order for individual product
            
            out.println("<div class='button-container'>");
            out.println("<form action='placeOrder.jsp' method='post'>");
            out.println("<input type='hidden' name='productDescription' value='" + productDescription + "'>");
            out.println("<input type='hidden' name='productPrice' value='" + productPrice + "'>");
            out.println("<input type='hidden' name='productImageLink' value='" + productImageLink + "'>");
            out.println("<input class='bttnx-3' type='submit' value='Place Order'>");
            out.println("</form>");



            out.println("<form action='deleteCartItem.jsp' method='post'>");
            out.println("<input type='hidden' name='productDescription' value='" + productDescription + "'>");
            out.println("<input type='hidden' name='productPrice' value='" + productPrice + "'>");
            out.println("<input type='hidden' name='productImageLink' value='" + productImageLink + "'>");
            out.println("<input class='bttn-2' type='submit' value='Remove Cart'>");
            out.println("</form>");
            out.println("</div>");
            
            out.println("</div>");
            out.println("</div>");
            
            cartIsEmpty = false;
        }
        
        if (cartIsEmpty) {
        	out.println("<u><p class='hello-hello-hello-hello'>Your cart is empty!</p></u>");
            out.println("<div class='head-xx-xx11-11'>");
            out.println("<div class='head1-xx-xx11-11'>");
            out.println("<a href='logined.html'><button class='hellheleolehe'>Go to Home</button></a>");
            out.println("</div>");
            out.println("</div>");
        } else {
            // Display a message if the user is not logged in
            out.println("<p>User not logged in. Please log in to view the cart.</p>");
        }
        
    } else {
        // Display a message if the user is not logged in
        out.println("<p>User not logged in. Please log in to view the cart.</p>");
    }
    


} catch (Exception e) {
    e.printStackTrace();
} finally {
    // Close the resources for cart
    try {
        if (cartResultSet != null) cartResultSet.close();
        if (cartPreparedStatement != null) cartPreparedStatement.close();
        if (cartConnection != null) cartConnection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>
</div>
</body>
</html>
