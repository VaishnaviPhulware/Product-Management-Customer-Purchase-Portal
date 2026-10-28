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
	 String data = (String)request.getAttribute("msg");
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
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Product Management</title>

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
       Main Container
    ========================= */

    .container {
        width: 90%;
        max-width: 900px;
        margin: 60px auto;
    }


    /* =========================
       Message Card
    ========================= */

    .message-card {
        background: white;
        padding: 45px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.07);
        border: 1px solid #e2e8f0;
        margin-bottom: 35px;
    }

    .success-icon {
        width: 70px;
        height: 70px;
        margin: 0 auto 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        background: #dcfce7;
        color: #16a34a;
        border-radius: 50%;
        font-size: 35px;
        font-weight: bold;
    }

    .message-card h1 {
        color: #1e293b;
        font-size: 27px;
        margin-bottom: 12px;
    }

    .message {
        color: #475569;
        font-size: 17px;
        line-height: 1.6;
    }


    /* =========================
       Action Cards
    ========================= */

    .action-grid {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 25px;
    }

    .action-card {
        background: white;
        padding: 30px;
        border-radius: 12px;
        text-align: center;
        border: 1px solid #e2e8f0;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
        transition: 0.3s;
    }

    .action-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.10);
    }

    .action-card h2 {
        color: #1e293b;
        font-size: 20px;
        margin-bottom: 10px;
    }

    .action-card p {
        color: #64748b;
        font-size: 14px;
        margin-bottom: 20px;
    }


    /* =========================
       Buttons
    ========================= */

    .btn {
        display: inline-block;
        padding: 11px 25px;
        background: #2563eb;
        color: white;
        text-decoration: none;
        border-radius: 7px;
        font-size: 14px;
        font-weight: 600;
        transition: 0.3s;
    }

    .btn:hover {
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

        .container {
            width: 92%;
            margin: 35px auto;
        }

        .message-card {
            padding: 35px 20px;
        }

        .message-card h1 {
            font-size: 23px;
        }

        .action-grid {
            grid-template-columns: 1fr;
        }

    }

</style>

</head>


<body>


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
     Main Content
========================= -->

<main class="container">


    <!-- Message Section -->

    <div class="message-card">

        <div class="success-icon">
            ✓
        </div>

        <h1>
            Product Operation Status
        </h1>

        <div class="message">

            <%
                String data = (String)request.getAttribute("msg");
                out.println(data);
            %>

        </div>

    </div>


    <!-- Action Options -->

    <div class="action-grid">


        <!-- Add Product -->

        <div class="action-card">

            <h2>
                Add Another Product
            </h2>

            <p>
                Add a new product to your product collection.
            </p>

            <!-- Existing URL NOT CHANGED -->
            <a href="AddProduct.html" class="btn">
                Add Product
            </a>

        </div>


        <!-- View Products -->

        <div class="action-card">

            <h2>
                Manage Products
            </h2>

            <p>
                View and manage all products available in the system.
            </p>

            <!-- Existing URL NOT CHANGED -->
            <a href="view1" class="btn">
                View Products
            </a>

        </div>


    </div>


    <!-- Footer -->

    <div class="footer">

        © 2026 Admin Panel. All Rights Reserved.

    </div>


</main>


</body>

</html>