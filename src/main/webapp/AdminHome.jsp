<%-- 
<%@page import="com.bean.AdminBean" %>
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
		AdminBean abean = (AdminBean)session.getAttribute("adminbean");
		out.println("Welcome "+abean.getA_fname()+"<br><br>");
	%>
	<a href="AddProduct.html">Add Product</a><br><br>
	<a href="view1">View Product</a><br><br>
	<a href="logout">LogOut</a><br><br>
	</h1>
</body>
</html>
--%>


<%@page import="com.bean.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<metacharset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard</title>

<style>

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Segoe UI", Arial, sans-serif;
    }

    body {
        min-height: 100vh;
        background: #f1f5f9;
        color: #1e293b;
    }

    /* =========================
       Navigation Bar
    ========================= */

    .navbar {
        height: 70px;
        background: #1e3a8a;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 6%;
        color: white;
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.15);
    }

    .logo {
        font-size: 22px;
        font-weight: 700;
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
        transform: translateY(-2px);
    }


    /* =========================
       Dashboard Container
    ========================= */

    .dashboard {
        width: 90%;
        max-width: 1100px;
        margin: 50px auto;
    }


    /* =========================
       Welcome Section
    ========================= */

    .welcome-section {
        background: white;
        padding: 30px;
        border-radius: 12px;
        margin-bottom: 30px;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
        border-left: 5px solid #2563eb;
    }

    .welcome-section h1 {
        color: #1e293b;
        font-size: 28px;
        margin-bottom: 8px;
    }

    .welcome-section p {
        color: #64748b;
        font-size: 15px;
    }


    /* =========================
       Dashboard Cards
    ========================= */

    .dashboard-grid {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 25px;
    }

    .dashboard-card {
        background: white;
        padding: 35px 30px;
        border-radius: 12px;
        text-align: center;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
        border: 1px solid #e2e8f0;
        transition: 0.3s ease;
    }

    .dashboard-card:hover {
        transform: translateY(-6px);
        box-shadow: 0 12px 25px rgba(0, 0, 0, 0.10);
    }

    .card-icon {
        width: 65px;
        height: 65px;
        margin: 0 auto 18px;
        display: flex;
        align-items: center;
        justify-content: center;
        background: #dbeafe;
        border-radius: 50%;
        font-size: 30px;
    }

    .dashboard-card h2 {
        color: #1e293b;
        font-size: 20px;
        margin-bottom: 10px;
    }

    .dashboard-card p {
        color: #64748b;
        font-size: 14px;
        margin-bottom: 22px;
        line-height: 1.5;
    }


    /* =========================
       Buttons
    ========================= */

    .card-btn {
        display: inline-block;
        text-decoration: none;
        color: white;
        background: #2563eb;
        padding: 11px 25px;
        border-radius: 7px;
        font-size: 14px;
        font-weight: 600;
        transition: 0.3s;
    }

    .card-btn:hover {
        background: #1d4ed8;
        transform: translateY(-2px);
    }


    /* =========================
       Footer
    ========================= */

    .footer {
        text-align: center;
        margin-top: 50px;
        padding: 20px;
        color: #94a3b8;
        font-size: 13px;
    }


    /* =========================
       Responsive Design
    ========================= */

    @media (max-width: 700px) {

        .navbar {
            padding: 0 20px;
        }

        .logo {
            font-size: 18px;
        }

        .dashboard {
            width: 92%;
            margin: 30px auto;
        }

        .dashboard-grid {
            grid-template-columns: 1fr;
        }

        .welcome-section h1 {
            font-size: 23px;
        }

    }

</style>

</head>

<body>


<%

    AdminBean abean = (AdminBean)session.getAttribute("adminbean");

%>


<!-- =========================
     Navigation Bar
========================= -->

<nav class="navbar">

    <div class="logo">
        Admin Panel
    </div>

    <!-- Existing URL NOT CHANGED -->
    <a href="logout" class="logout-btn">
        Logout
    </a>

</nav>


<!-- =========================
     Main Dashboard
========================= -->

<main class="dashboard">


    <!-- Welcome Section -->

    <section class="welcome-section">

        <h1>
            Welcome, <%= abean.getA_fname() %>!
        </h1>

        <p>
            Manage your products and monitor your system from the admin dashboard.
        </p>

    </section>


    <!-- Dashboard Cards -->

    <section class="dashboard-grid">


        <!-- Add Product Card -->

        <div class="dashboard-card">

            <div class="card-icon">
                ➕
            </div>

            <h2>
                Add Product
            </h2>

            <p>
                Add new products to your system and provide the required product details.
            </p>

            <!-- Existing URL NOT CHANGED -->
            <a href="AddProduct.html" class="card-btn">
                Add Product
            </a>

        </div>


        <!-- View Product Card -->

        <div class="dashboard-card">

            <div class="card-icon">
                📦
            </div>

            <h2>
                View Products
            </h2>

            <p>
                View and manage all the products available in your system.
            </p>

            <!-- Existing URL NOT CHANGED -->
            <a href="view1" class="card-btn">
                View Products
            </a>

        </div>


    </section>


    <!-- Footer -->

    <div class="footer">

        © 2026 Admin Panel. All Rights Reserved.

    </div>


</main>


</body>

</html>
