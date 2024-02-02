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
        .hello-xx-x1{
            text-align: center;
            align-items: center;
        }
        .hello-hello-hello-hello{
        	margin-top: 30px;
            color: black;
            font-size: xx-large;
            margin-left: -114px;
        }
        .head-xx-xx11-11{
        	margin-top: 50px;
	        height: 50%;
	        width: 50%;
            align-items: center;
            margin-left:505px;
        }
        .head1-xx-xx11-11{
        	height: 100px;
	        width: 400px;
	        border-radius: 50%;
	        background-image: linear-gradient(rgb(209, 203, 203), rgb(78, 78, 73),rgb(63, 68, 63),rgb(211, 211, 230),rgb(52, 48, 49));
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

<div class="hello-xx-x1">
<%
// Database connection parameters for cart
String cartJdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String cartUsername = "system";
String cartPassword = "admin";

// JDBC connections for cart
Connection cartConnection = null;
PreparedStatement cartStatement = null;

try {
    // Load the JDBC driver for cart
    Class.forName("oracle.jdbc.driver.OracleDriver");

    // Establish the connection for cart
    cartConnection = DriverManager.getConnection(cartJdbcUrl, cartUsername, cartPassword);

    // Prepare a statement for inserting data into the cart table
    String insertQuery = "INSERT INTO cart (email, product_description, product_price, product_image_link) VALUES (?, ?, ?, ?)";
    cartStatement = cartConnection.prepareStatement(insertQuery);

    // Retrieve user email and product details from session
    String userEmail = (String) session.getAttribute("email"); // Use "email" as the attribute name
    if (userEmail == null || userEmail.isEmpty()) {
        out.println("<p>User email not found in session. Please login and try again.</p>");
    } else {
        String productDescription = request.getParameter("productDescription");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        String productImageLink = request.getParameter("productImageLink");

        // Set values for the cart statement
        cartStatement.setString(1, userEmail);
        cartStatement.setString(2, productDescription);
        cartStatement.setDouble(3, productPrice);
        cartStatement.setString(4, productImageLink);

        // Execute the insert query
        int rowsAffected = cartStatement.executeUpdate();

        if (rowsAffected > 0) {
            out.println("<u><p class='hello-hello-hello-hello'>Successfully added to cart!</p></u>");
            out.println("<div class='head-xx-xx11-11'>");
            out.println("<div class='head1-xx-xx11-11'>");
            out.println("<a href='cartview.jsp'><button class='hellheleolehe'>Go to Cart</button></a>");
            out.println("</div>");
            out.println("</div>");
        } else {
            out.println("<p class='hello-hello-hello-hello'>Failed to add to cart. Please try again.</p>");
        }
    }

} catch (Exception e) {
    e.printStackTrace();
} finally {
    // Close the resources for cart
    try {
        if (cartStatement != null) cartStatement.close();
        if (cartConnection != null) cartConnection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>
</div>
</body>
</html>
