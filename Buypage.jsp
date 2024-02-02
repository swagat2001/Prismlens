<%@ page import="java.sql.*, java.util.*" %>
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
    	.product-container-top-top-top{
    		display: flex;
    		flex-direction: row;
    		 flex-wrap: wrap;
    		
    		justify-content: space-between;
    	}

        .product-container {
		    border: 2px solid #ccc;
		    padding: 10px;
		    margin: 30px;
		    width: 200px;
		    float: left;
		    border-radius: 5px;
		    transition: box-shadow 0.7s ease, border-radius 0.7s ease,transform 0.7s ease;
		    margin-bottom: 20px;
		    height: 261px;
		    box-shadow: 5px 5px 8px lightblue;
		}

		.product-container:hover {
		    box-shadow: 0 0 10px black;
		    border-radius: 10px;
		    transform: scale(1.05);
		}

        .product-container img {
            max-width: 100%;
            height:90px;
        }

        #xxee313{
        	padding: 5px;
            margin-left: 17px;
            background: rgb(25, 161, 210);
            font-size: x-large;
            border-radius: 3px;
            transition: background 0.5s ease;
            transition: border-radius 0.3s ease;
        }

        #xxee313:hover{
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

        .desc-desc-desc-3{
        	color: black;
            font-weight: bold;
            margin-top: 4px;
        }
        
        .desc-desc-desc-4{
        	color: rgb(147, 12, 12);
        	margin-top: -6px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
        	
        }

        @media only screen and (max-width: 480px) {
            .product-container-top-top-top {
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
            .product-container {
                width: 100%;
                margin: 15px 0px;
                align-items: center;
            }

            #xxee313 {
                margin-left: 0;
            }
}
    </style>
</head>
<body>

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
                        Order<span></span><span></span><span></span><span></span>
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
                    <li class="sidemenu"><a href="#trackorder">Track Order</a></li>
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


<div class='product-container-top-top-top'>

    <% 
    // Database connection parameters
    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
    String username = "system";
    String password = "admin";

    // JDBC connection
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
        // Load the JDBC driver
        Class.forName("oracle.jdbc.driver.OracleDriver");

        // Establish the connection
        connection = DriverManager.getConnection(jdbcUrl, username, password);

        // Create a statement
        statement = connection.createStatement();

        // Execute a query to fetch data from the products table
        String query = "SELECT * FROM products";
        resultSet = statement.executeQuery(query);
		
		if (!resultSet.isBeforeFirst()) {
		    System.out.println("No rows in the result set");
		} else {
		    System.out.println("Rows in the result set");
		}
		
        // Iterate through the result set and display product information
		while (resultSet.next()) {
		    String imageLink = resultSet.getString("image_link");
		    String description = resultSet.getString("description");
		    double price = resultSet.getDouble("price");

		    // Display product information in a container with "Add to Cart" button
		   	out.println("<div class='product-container-top-top'>");

		    out.println("<div class='product-container'>");
		    out.println("<img src='" + imageLink + "' alt='Product Image'>");
		    out.println("<p class='desc-desc-desc-3'>" + description + "</p>");
		    out.println("<p class='desc-desc-desc-4'>Rs: " + price + "</p>");

		    // Add an "Add to Cart" button for each product
		    out.println("<form action='cart.jsp' method='post'>");
		    out.println("<input type='hidden' name='productDescription' value='" + description + "'>");
		    out.println("<input type='hidden' name='productPrice' value='" + price + "'>");
		    out.println("<input type='hidden' name='productImageLink' value='" + imageLink + "'>");
		    out.println("<input id='xxee313' type='submit' name='addToCartButton' value='Add to Cart'>");
		    out.println("</form>");

		    out.println("</div>");
		    out.println("</div>");

		}

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close the resources
        try {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    %>

</div>

</body>
</html>
