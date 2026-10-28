<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>
<%
	String data = (String)request.getAttribute("data");
out.println(data+"<br><br>");
%>
<a href="AddProduct.html">Add Product</a><br><br>
	<a href="view1">View Product</a><br><br>
	<a href="logout">LogOut</a><br><br>
	</h1>
</body>
</html>
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Delete Product</title>


<style>

/* =========================
   RESET
========================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


/* =========================
   BODY
========================= */

body {
    min-height: 100vh;

    background-color: #f4f6f9;

    font-family: Arial, Helvetica, sans-serif;

    color: #1e293b;
}


/* =========================
   NAVBAR
========================= */

.navbar {
    width: 100%;

    height: 70px;

    background-color: #1e3a8a;

    display: flex;

    align-items: center;

    justify-content: space-between;

    padding: 0 7%;

    box-shadow: 0 3px 12px rgba(0, 0, 0, 0.15);
}


.logo {
    color: white;

    font-size: 22px;

    font-weight: bold;
}


.logout-btn {
    text-decoration: none;

    color: white;

    background-color: #dc2626;

    padding: 10px 20px;

    border-radius: 6px;

    font-size: 14px;

    font-weight: bold;

    transition: 0.3s;
}


.logout-btn:hover {
    background-color: #b91c1c;

    transform: translateY(-1px);
}


/* =========================
   MAIN CONTAINER
========================= */

.container {
    width: 90%;

    max-width: 650px;

    margin: 70px auto;
}


/* =========================
   MESSAGE CARD
========================= */

.message-card {
    background-color: white;

    padding: 45px 40px;

    border-radius: 14px;

    text-align: center;

    border: 1px solid #e2e8f0;

    box-shadow: 0 6px 25px rgba(0, 0, 0, 0.08);
}


/* =========================
   DELETE ICON
========================= */

.delete-icon {
    width: 75px;

    height: 75px;

    margin: 0 auto 22px;

    border-radius: 50%;

    background-color: #fee2e2;

    color: #dc2626;

    display: flex;

    align-items: center;

    justify-content: center;

    font-size: 28px;

    font-weight: bold;
}


/* =========================
   HEADING
========================= */

.message-card h1 {
    font-size: 27px;

    color: #1e293b;

    margin-bottom: 12px;
}


/* =========================
   MESSAGE
========================= */

.message {
    color: #64748b;

    font-size: 16px;

    line-height: 1.7;

    margin-bottom: 30px;
}


/* =========================
   BUTTONS
========================= */

.actions {
    display: flex;

    justify-content: center;

    gap: 15px;

    flex-wrap: wrap;
}


.btn {
    display: inline-block;

    text-decoration: none;

    padding: 12px 22px;

    border-radius: 7px;

    font-size: 14px;

    font-weight: bold;

    transition: 0.3s;
}


.add-btn {
    background-color: #2563eb;

    color: white;
}


.add-btn:hover {
    background-color: #1d4ed8;

    transform: translateY(-2px);
}


.view-btn {
    background-color: #0f766e;

    color: white;
}


.view-btn:hover {
    background-color: #115e59;

    transform: translateY(-2px);
}


/* =========================
   FOOTER
========================= */

.footer {
    margin-top: 30px;

    color: #94a3b8;

    font-size: 13px;
}


/* =========================
   RESPONSIVE
========================= */

@media (max-width: 600px) {

    .navbar {
        padding: 0 20px;
    }


    .logo {
        font-size: 18px;
    }


    .container {
        width: 92%;

        margin: 40px auto;
    }


    .message-card {
        padding: 35px 20px;
    }


    .message-card h1 {
        font-size: 23px;
    }


    .actions {
        flex-direction: column;
    }


    .btn {
        width: 100%;
    }

}

</style>

</head>


<body>


<!-- =========================
     NAVBAR
========================= -->

<nav class="navbar">

    <div class="logo">
        Admin Panel
    </div>


    <!-- Existing URL - NOT CHANGED -->

    <a href="logout" class="logout-btn">
        Logout
    </a>

</nav>



<!-- =========================
     MAIN CONTENT
========================= -->

<div class="container">


    <div class="message-card">


        <!-- Delete Status Icon -->

        <div class="delete-icon">
            X
        </div>


        <h1>
            Product Deleted
        </h1>


        <!-- =========================
             EXISTING BACKEND MESSAGE
        ========================= -->

        <div class="message">

        <%

            String data =
                (String) request.getAttribute("data");

            out.println(data);

        %>

        </div>



        <!-- =========================
             ACTION BUTTONS
        ========================= -->

        <div class="actions">


            <!-- Existing URL - NOT CHANGED -->

            <a
                href="AddProduct.html"
                class="btn add-btn">

                Add Product

            </a>


            <!-- Existing URL - NOT CHANGED -->

            <a
                href="view1"
                class="btn view-btn">

                View Products

            </a>


        </div>


        <div class="footer">

            Admin Product Management System

        </div>


    </div>


</div>


</body>

</html>