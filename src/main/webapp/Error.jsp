<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
		String msg =(String)request.getAttribute("msg");
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
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

<title>Error - Admin Portal</title>

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

    display: flex;
    flex-direction: column;
}


/* =========================
   NAVBAR
========================= */

.navbar {
    width: 100%;

    height: 70px;

    background: #1e3a8a;

    display: flex;

    align-items: center;

    padding: 0 7%;

    box-shadow: 0 3px 12px rgba(0, 0, 0, 0.15);
}


.logo {
    color: white;

    font-size: 22px;

    font-weight: 700;
}


/* =========================
   MAIN CONTAINER
========================= */

.container {
    flex: 1;

    width: 90%;

    max-width: 650px;

    margin: 50px auto;

    display: flex;

    align-items: center;

    justify-content: center;
}


/* =========================
   ERROR CARD
========================= */

.error-card {
    width: 100%;

    background: white;

    border: 1px solid #e2e8f0;

    border-radius: 16px;

    padding: 45px 40px;

    text-align: center;

    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
}


/* =========================
   ERROR ICON
========================= */

.error-icon {
    width: 80px;

    height: 80px;

    margin: 0 auto 22px;

    border-radius: 50%;

    background: #fee2e2;

    color: #dc2626;

    display: flex;

    align-items: center;

    justify-content: center;

    font-size: 40px;

    font-weight: bold;
}


/* =========================
   HEADING
========================= */

.error-card h1 {
    color: #b91c1c;

    font-size: 28px;

    margin-bottom: 12px;
}


/* =========================
   MESSAGE
========================= */

.error-message {
    background: #fff7ed;

    border: 1px solid #fed7aa;

    border-radius: 10px;

    padding: 18px;

    margin: 20px 0 28px;

    color: #9a3412;

    font-size: 15px;

    line-height: 1.6;
}


/* =========================
   ACTION SECTION
========================= */

.action-box {
    background: #f8fafc;

    border: 1px solid #e2e8f0;

    border-radius: 10px;

    padding: 22px;
}


.action-box p {
    color: #64748b;

    font-size: 14px;

    margin-bottom: 18px;
}


/* =========================
   BUTTONS
========================= */

.button-group {
    display: flex;

    justify-content: center;

    gap: 12px;

    flex-wrap: wrap;
}


.btn {
    display: inline-block;

    text-decoration: none;

    padding: 12px 24px;

    border-radius: 7px;

    font-size: 14px;

    font-weight: 600;

    transition: 0.3s;
}


/* Add Product */

.add-btn {
    background: #2563eb;

    color: white;
}


.add-btn:hover {
    background: #1d4ed8;

    transform: translateY(-2px);

    box-shadow: 0 5px 12px rgba(37, 99, 235, 0.20);
}


/* View Product */

.view-btn {
    background: #0f766e;

    color: white;
}


.view-btn:hover {
    background: #115e59;

    transform: translateY(-2px);

    box-shadow: 0 5px 12px rgba(15, 118, 110, 0.20);
}


/* Logout */

.logout-btn {
    background: #475569;

    color: white;
}


.logout-btn:hover {
    background: #334155;

    transform: translateY(-2px);

    box-shadow: 0 5px 12px rgba(71, 85, 105, 0.20);
}


/* =========================
   FOOTER
========================= */

.footer {
    text-align: center;

    padding: 20px;

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

        margin: 30px auto;
    }


    .error-card {
        padding: 35px 20px;
    }


    .error-card h1 {
        font-size: 23px;
    }


    .button-group {
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
        Admin Portal
    </div>

</nav>


<%

    /*
     * Get the error message sent by the servlet.
     */

    String msg = (String) request.getAttribute("msg");

%>


<!-- =========================
     MAIN CONTENT
========================= -->

<main class="container">

    <div class="error-card">


        <!-- ERROR ICON -->

        <div class="error-icon">
            !
        </div>


        <!-- HEADING -->

        <h1>
            Something Went Wrong
        </h1>


        <!-- ERROR MESSAGE -->

        <div class="error-message">

            <%
                if (msg != null && !msg.trim().isEmpty()) {
                    out.println(msg);
                }
                else {
                    out.println("Unable to process your request. Please try again.");
                }
            %>

        </div>


        <!-- ACTION SECTION -->

        <div class="action-box">

            <p>
                Please choose an option to continue.
            </p>


            <div class="button-group">


                <!-- Existing URL - unchanged -->

                <a href="AddProduct.html" class="btn add-btn">
                    Add Product
                </a>


                <!-- Existing URL - unchanged -->

                <a href="view1" class="btn view-btn">
                    View Products
                </a>


                <!-- Existing URL - unchanged -->

                <a href="logout" class="btn logout-btn">
                    Logout
                </a>


            </div>

        </div>


    </div>

</main>


<!-- =========================
     FOOTER
========================= -->

<div class="footer">

    Customer Management System &copy; 2026

</div>


</body>

</html>