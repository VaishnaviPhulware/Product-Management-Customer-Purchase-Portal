<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
		String data =(String)request.getAttribute("data");
		out.println(data+"!!!<br><br>");
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

<title>Admin Panel</title>


<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}


body {
    min-height: 100vh;
    background: #f4f6f9;
    color: #1e293b;
}


/* =========================
   NAVBAR
========================= */

.navbar {
    height: 70px;
    background: #1e3a8a;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 7%;
    color: white;
    box-shadow: 0 3px 12px rgba(0,0,0,0.15);
}


.logo {
    font-size: 22px;
    font-weight: 700;
}


.logout {
    text-decoration: none;
    color: white;
    background: #dc2626;
    padding: 9px 18px;
    border-radius: 6px;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s;
}


.logout:hover {
    background: #b91c1c;
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
    background: white;
    padding: 45px;
    border-radius: 14px;
    text-align: center;
    box-shadow: 0 6px 25px rgba(0,0,0,0.08);
    border: 1px solid #e2e8f0;
}


/* =========================
   SUCCESS ICON
========================= */

.success-icon {
    width: 75px;
    height: 75px;
    margin: 0 auto 20px;
    border-radius: 50%;
    background: #dcfce7;
    color: #15803d;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 38px;
    font-weight: bold;
}


/* =========================
   MESSAGE
========================= */

.message-card h1 {
    font-size: 26px;
    color: #1e293b;
    margin-bottom: 12px;
}


.message-text {
    color: #64748b;
    font-size: 16px;
    line-height: 1.6;
    margin-bottom: 30px;
}


/* =========================
   ACTION BUTTONS
========================= */

.actions {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
}


.btn {
    text-decoration: none;
    padding: 12px 22px;
    border-radius: 7px;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s;
}


.add-btn {
    background: #2563eb;
    color: white;
}


.add-btn:hover {
    background: #1d4ed8;
    transform: translateY(-2px);
}


.view-btn {
    background: #0f766e;
    color: white;
}


.view-btn:hover {
    background: #115e59;
    transform: translateY(-2px);
}


/* =========================
   FOOTER
========================= */

.footer {
    margin-top: 35px;
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


    <!-- Existing URL unchanged -->

    <a href="logout" class="logout">
        Logout
    </a>

</nav>



<!-- =========================
     MAIN CONTENT
========================= -->

<div class="container">


    <div class="message-card">


        <!-- Success Icon -->

        <div class="success-icon">
            ✓
        </div>


        <h1>
            Operation Successful
        </h1>


        <!-- =========================
             Existing Data
        ========================= -->

        <div class="message-text">

        <%

            String data =
                (String)request.getAttribute("data");

            out.println(data + "!!!");

        %>

        </div>



        <!-- =========================
             ACTION BUTTONS
        ========================= -->

        <div class="actions">


            <!-- Existing URL unchanged -->

            <a
                href="AddProduct.html"
                class="btn add-btn">

                Add Product

            </a>


            <!-- Existing URL unchanged -->

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