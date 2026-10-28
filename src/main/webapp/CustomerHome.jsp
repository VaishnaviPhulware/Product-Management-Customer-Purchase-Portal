<%-- <%@page import="com.bean.CustomerBean"%>
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
		CustomerBean cb = (CustomerBean)session.getAttribute("custbean");
		String name = cb.getC_fname();
		out.println("Welcome "+name+"<br><br>");
	%>
	<a href="vcp">View Product</a><br><br>
	<a href="clogout">Logout</a><br><br>
	</h1>
</body>
</html> --%>

<%@page import="com.bean.CustomerBean"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Customer Home</title>


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

    font-family: "Segoe UI", Arial, sans-serif;

    background: #f4f7fb;

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

    box-shadow: 0 3px 12px rgba(0, 0, 0, 0.15);
}


.logo {
    color: white;

    font-size: 22px;

    font-weight: 700;
}


.nav-right {
    display: flex;

    align-items: center;

    gap: 20px;
}


.welcome-small {
    color: #dbeafe;

    font-size: 14px;
}


.logout-btn {
    text-decoration: none;

    color: white;

    background: #dc2626;

    padding: 9px 18px;

    border-radius: 6px;

    font-size: 14px;

    font-weight: 600;

    transition: 0.3s;
}


.logout-btn:hover {
    background: #b91c1c;

    transform: translateY(-1px);
}


/* =========================
   MAIN CONTAINER
========================= */

.container {
    width: 90%;

    max-width: 1100px;

    margin: 50px auto;
}


/* =========================
   WELCOME SECTION
========================= */

.welcome-section {
    background: white;

    padding: 35px;

    border-radius: 14px;

    border: 1px solid #e2e8f0;

    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);

    margin-bottom: 30px;
}


.welcome-section h1 {
    font-size: 30px;

    color: #1e293b;

    margin-bottom: 10px;
}


.welcome-section h1 span {
    color: #2563eb;
}


.welcome-section p {
    color: #64748b;

    font-size: 15px;

    line-height: 1.6;
}


/* =========================
   DASHBOARD CARDS
========================= */

.dashboard-grid {
    display: grid;

    grid-template-columns: repeat(2, 1fr);

    gap: 25px;
}


.dashboard-card {
    background: white;

    padding: 30px;

    border-radius: 14px;

    border: 1px solid #e2e8f0;

    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);

    transition: 0.3s;
}


.dashboard-card:hover {
    transform: translateY(-5px);

    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.10);
}


/* =========================
   CARD ICON
========================= */

.card-icon {
    width: 58px;

    height: 58px;

    border-radius: 12px;

    background: #dbeafe;

    display: flex;

    align-items: center;

    justify-content: center;

    font-size: 28px;

    margin-bottom: 20px;
}


.dashboard-card h2 {
    font-size: 21px;

    color: #1e293b;

    margin-bottom: 8px;
}


.dashboard-card p {
    color: #64748b;

    font-size: 14px;

    line-height: 1.5;

    margin-bottom: 22px;
}


/* =========================
   VIEW PRODUCT BUTTON
========================= */

.view-btn {
    display: inline-block;

    text-decoration: none;

    background: #2563eb;

    color: white;

    padding: 11px 20px;

    border-radius: 7px;

    font-size: 14px;

    font-weight: 600;

    transition: 0.3s;
}


.view-btn:hover {
    background: #1d4ed8;

    transform: translateY(-2px);

    box-shadow: 0 5px 12px rgba(37, 99, 235, 0.20);
}


/* =========================
   FOOTER
========================= */

.footer {
    text-align: center;

    margin-top: 50px;

    padding: 20px;

    color: #94a3b8;

    font-size: 13px;
}


/* =========================
   RESPONSIVE
========================= */

@media (max-width: 700px) {

    .navbar {
        padding: 0 20px;
    }


    .logo {
        font-size: 18px;
    }


    .welcome-small {
        display: none;
    }


    .container {
        width: 92%;

        margin: 30px auto;
    }


    .welcome-section {
        padding: 25px;
    }


    .welcome-section h1 {
        font-size: 25px;
    }


    .dashboard-grid {
        grid-template-columns: 1fr;
    }

}

</style>

</head>


<body>


<%

    /*
     * Getting customer information
     * exactly as in your original JSP.
     */

    CustomerBean cb =
        (CustomerBean) session.getAttribute("custbean");

    String name =
        cb.getC_fname();

%>


<!-- =========================
     NAVBAR
========================= -->

<nav class="navbar">


    <div class="logo">
        Customer Portal
    </div>


    <div class="nav-right">

        <span class="welcome-small">
            Welcome, <%= name %>
        </span>


        <!-- Existing URL - unchanged -->

        <a
            href="clogout"
            class="logout-btn">

            Logout

        </a>

    </div>


</nav>



<!-- =========================
     MAIN CONTENT
========================= -->

<main class="container">


    <!-- WELCOME -->

    <section class="welcome-section">

        <h1>

            Welcome,

            <span>
                <%= name %>
            </span>

        </h1>


        <p>
            Welcome to your customer portal.
            Browse available products and explore
            the products available in our store.
        </p>

    </section>



    <!-- DASHBOARD -->

    <section class="dashboard-grid">


        <!-- VIEW PRODUCTS -->

        <div class="dashboard-card">


            <div class="card-icon">
                🛍️
            </div>


            <h2>
                View Products
            </h2>


            <p>
                Browse our available products,
                check product details and explore
                what is currently available.
            </p>


            <!-- Existing URL - unchanged -->

            <a
                href="vcp"
                class="view-btn">

                View Products

            </a>


        </div>


        <!-- ACCOUNT -->

        <div class="dashboard-card">


            <div class="card-icon">
                👤
            </div>


            <h2>
                My Account
            </h2>


            <p>
                You are successfully logged in
                to your customer account.
                Enjoy your shopping experience.
            </p>


            <!-- Logout uses existing URL -->

            <a
                href="clogout"
                class="view-btn">

                Logout

            </a>


        </div>


    </section>


    <!-- FOOTER -->

    <div class="footer">

        Customer Management System &copy; 2026

    </div>


</main>


</body>

</html>