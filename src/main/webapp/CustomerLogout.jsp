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
		session.invalidate();
		out.println("Customer Logged out successfully!!!");
	%>
	
	</h1>
	<%@ include file="index.html" %>
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

<title>Customer Logout</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

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
   MAIN
========================= */

.container {
    flex: 1;

    width: 90%;
    max-width: 600px;

    margin: 50px auto;

    display: flex;
    align-items: center;
    justify-content: center;
}


/* =========================
   LOGOUT CARD
========================= */

.logout-card {
    width: 100%;

    background: white;

    border: 1px solid #e2e8f0;

    border-radius: 16px;

    padding: 45px 40px;

    text-align: center;

    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
}


/* =========================
   SUCCESS ICON
========================= */

.success-icon {
    width: 80px;
    height: 80px;

    margin: 0 auto 22px;

    border-radius: 50%;

    background: #dcfce7;

    color: #16a34a;

    display: flex;

    align-items: center;
    justify-content: center;

    font-size: 40px;

    font-weight: bold;
}


/* =========================
   MESSAGE
========================= */

.logout-card h1 {
    color: #15803d;

    font-size: 27px;

    margin-bottom: 12px;
}

.logout-card p {
    color: #64748b;

    font-size: 15px;

    line-height: 1.6;

    margin-bottom: 28px;
}


/* =========================
   HOME BOX
========================= */

.home-box {
    background: #f8fafc;

    border: 1px solid #e2e8f0;

    border-radius: 10px;

    padding: 22px;
}

.home-box p {
    margin-bottom: 18px;

    font-size: 14px;
}


/* =========================
   HOME BUTTON
========================= */

.home-btn {
    display: inline-block;

    text-decoration: none;

    background: #2563eb;

    color: white;

    padding: 12px 26px;

    border-radius: 7px;

    font-size: 14px;

    font-weight: 600;

    transition: 0.3s;
}

.home-btn:hover {
    background: #1d4ed8;

    transform: translateY(-2px);

    box-shadow: 0 5px 12px rgba(37, 99, 235, 0.20);
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

    .logout-card {
        padding: 35px 20px;
    }

    .logout-card h1 {
        font-size: 23px;
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
        Customer Portal
    </div>

</nav>


<%

    /*
     * Logout existing customer session.
     */

    session.invalidate();

%>


<!-- =========================
     MAIN CONTENT
========================= -->

<main class="container">

    <div class="logout-card">


        <!-- SUCCESS ICON -->

        <div class="success-icon">
            ✓
        </div>


        <!-- SUCCESS MESSAGE -->

        <h1>
            Customer Logged Out Successfully!
        </h1>


        <p>
            You have been successfully logged out
            of the Customer Portal.
        </p>


        <!-- HOME SECTION -->

        <div class="home-box">

            <p>
                Thank you for using our system.
                You can return to the home page below.
            </p>


            <!-- Existing URL - NOT CHANGED -->

            <a href="index.html" class="home-btn">
                Return to Home
            </a>

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