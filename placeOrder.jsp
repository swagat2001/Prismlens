<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        .main-main-body-body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #fff; /* White background color */
            display: flex;
            align-items: center;
            justify-content: center;
            height: 80vh;
            overflow: hidden; /* Hide overflow to prevent scrolling */
        }

        .coins-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            pointer-events: none; /* Allow clicking through the coin container */
        }

        .coin {
            position: absolute;
            width: 20px;
            height: 20px;
            background-color: #ffd700; /* Coin color (gold) */
            border-radius: 50%;
            animation: coinFall 2s linear infinite;
        }

        /* Define the coin animation */
        @keyframes coinFall {
            0% {
                transform: translateY(-100vh);
            }
            100% {
                transform: translateY(100vh);
            }
        }

        .confirmation-container {
		    position: relative;
		    width: 300px;
		    height: 300px;
		    background-color: #3498db; /* Blue container background color */
		    border-radius: 50%;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    flex-direction: column;
		    text-align: center;
		    color: #fff; /* White text color */
		    overflow: hidden; /* Hide overflow within the container */
		    animation: scaleAnimation 3s infinite alternate;
		}
		
		@keyframes scaleAnimation {
		    from {
		        transform: scale(1);
		        box-shadow: 0 0 5px green;
		    }
		    
		    to {
		        transform: scale(1.4);
		        box-shadow: 0 0 20px green;
		    }
		}
		
        .tick-symbol {
            font-size: 50px;
            margin-bottom: 20px;
        }

        .plced-plced-djehdjd{
            margin: 0;
        }

        .dhdhjdhfdlfjdjlfljdo{
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #3498db; /* Blue button color */
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease-in-out;
        }

        .dhdhjdhfdlfjdjlfljdo:hover {
            background-color: #2980b9; /* Darker blue on hover */
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

<div class='main-main-body-body'>
    <div class="coins-container">
        <!-- Add multiple coins by duplicating these lines -->
        <div class="coin" style="left: 10%;"></div>
        <div class="coin" style="left: 20%;"></div>
        <div class="coin" style="left: 30%;"></div>
        <div class="coin" style="left: 50%;"></div>
        <div class="coin" style="left: 80%;"></div>
        <div class="coin" style="left: 30%;"></div>
        <div class="coin" style="left: 65%;"></div>
        <div class="coin" style="left: 15%;"></div>
        <div class="coin" style="left: 25%;"></div>
        <div class="coin" style="left: 25%;"></div>
        <div class="coin" style="left: 95%;"></div>
        <div class="coin" style="left: 85%;"></div>
        <div class="coin" style="left: 75%;"></div>
        <div class="coin" style="left: 70%;"></div>
        <!-- Add more coins as needed -->
    </div>

    <div class="confirmation-container">
        <div class="tick-symbol">&#10004;</div>
        <p class='plced-plced-djehdjd'>Order Placed Successfully</p>
        <a href='logined.html' class='dhdhjdhfdlfjdjlfljdo'>Go to Home</a>
    </div>
</body>
</html>
</div>

<%
// Database connection parameters for orders
String ordersJdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String ordersUsername = "system";
String ordersPassword = "admin";

// Database connection parameters for cart
String cartJdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String cartUsername = "system";
String cartPassword = "admin";

// JDBC connections for orders
Connection ordersConnection = null;
PreparedStatement ordersPreparedStatement = null;

// JDBC connections for cart
Connection cartConnection = null;
PreparedStatement cartPreparedStatement = null;

try {
    // Load the JDBC driver for orders
    Class.forName("oracle.jdbc.driver.OracleDriver");

    // Establish the connection for orders
    ordersConnection = DriverManager.getConnection(ordersJdbcUrl, ordersUsername, ordersPassword);

    // Retrieve parameters from the request
    String productDescription = request.getParameter("productDescription");
    double productPrice = Double.parseDouble(request.getParameter("productPrice"));
    String productImageLink = request.getParameter("productImageLink");
    String userEmail = (String) session.getAttribute("email");

    // Insert order into the orders table with order placement time
    String insertOrderQuery = "INSERT INTO orders (user_email, product_description, product_price, product_image_link, order_timestamp) VALUES (?, ?, ?, ?, CURRENT_TIMESTAMP)";
    ordersPreparedStatement = ordersConnection.prepareStatement(insertOrderQuery);
    ordersPreparedStatement.setString(1, userEmail);
    ordersPreparedStatement.setString(2, productDescription);
    ordersPreparedStatement.setDouble(3, productPrice);
    ordersPreparedStatement.setString(4, productImageLink);
    ordersPreparedStatement.executeUpdate();

    // Now, remove the item from the cart
    cartConnection = DriverManager.getConnection(cartJdbcUrl, cartUsername, cartPassword);
    String deleteCartItemQuery = "DELETE FROM cart WHERE email = ? AND product_description = ?";
    cartPreparedStatement = cartConnection.prepareStatement(deleteCartItemQuery);
    cartPreparedStatement.setString(1, userEmail);
    cartPreparedStatement.setString(2, productDescription);
    cartPreparedStatement.executeUpdate();

} catch (Exception e) {
    e.printStackTrace();
} finally {
    // Close the resources for orders and cart
    try {
        if (ordersPreparedStatement != null) ordersPreparedStatement.close();
        if (ordersConnection != null) ordersConnection.close();
        if (cartPreparedStatement != null) cartPreparedStatement.close();
        if (cartConnection != null) cartConnection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>

