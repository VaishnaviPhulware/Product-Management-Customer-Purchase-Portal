<%-- 
<%@page import="com.bean.ProductBean"%>
<%@page import="com.bean.CustomerBean"%>
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
		ProductBean bean =(ProductBean)session.getAttribute("pbean");
		String name=(String)((CustomerBean)session.getAttribute("custbean")).getC_fname();
		out.println("Hello "+name+" !!!<br><br>");
		int price = Integer.parseInt(bean.getP_price()) *Integer.parseInt(request.getParameter("req"));
		out.println("You have Charged "+price+"/Rs<br><br>");
		out.println("Order confirmed Successfully!!!!<br><br>");
	%>
	<a href="vcp">View Product</a><br><br>
	<a href="clogout">Logout</a><br><br>
	</h1>
</body>
</html>
--%>

<%@page import="com.bean.ProductBean"%>
<%@page import="com.bean.CustomerBean"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Order Confirmed</title>


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
    width: 100%;

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

    max-width: 650px;

    margin: 55px auto;
}


/* =========================
   CONFIRMATION CARD
========================= */

.confirmation-card {
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

    font-size: 38px;

    font-weight: bold;
}


/* =========================
   HEADING
========================= */

.confirmation-card h1 {
    color: #15803d;

    font-size: 28px;

    margin-bottom: 10px;
}


.greeting {
    color: #475569;

    font-size: 15px;

    margin-bottom: 30px;
}


.customer-name {
    color: #2563eb;

    font-weight: 700;
}


/* =========================
   ORDER DETAILS
========================= */

.order-details {
    background: #f8fafc;

    border: 1px solid #e2e8f0;

    border-radius: 10px;

    padding: 20px;

    margin-bottom: 28px;
}


.detail-row {
    display: flex;

    justify-content: space-between;

    align-items: center;

    padding: 12px 0;

    border-bottom: 1px solid #e2e8f0;
}


.detail-row:last-child {
    border-bottom: none;
}


.detail-label {
    color: #64748b;

    font-size: 14px;
}


.detail-value {
    color: #1e293b;

    font-size: 14px;

    font-weight: 600;
}


/* =========================
   TOTAL AMOUNT
========================= */

.total-row {
    margin-top: 5px;

    padding-top: 16px;

    border-top: 2px solid #cbd5e1;
}


.total-label {
    color: #334155;

    font-size: 16px;

    font-weight: 700;
}


.total-value {
    color: #2563eb;

    font-size: 22px;

    font-weight: 700;
}


/* =========================
   SUCCESS MESSAGE
========================= */

.success-message {
    background: #f0fdf4;

    border: 1px solid #bbf7d0;

    color: #166534;

    padding: 14px;

    border-radius: 8px;

    font-size: 14px;

    margin-bottom: 28px;
}


/* =========================
   BUTTONS
========================= */

.actions {
    display: flex;

    justify-content: center;

    gap: 14px;

    flex-wrap: wrap;
}


.btn {
    display: inline-block;

    text-decoration: none;

    padding: 12px 22px;

    border-radius: 7px;

    font-size: 14px;

    font-weight: 600;

    transition: 0.3s;
}


.products-btn {
    background: #2563eb;

    color: white;
}


.products-btn:hover {
    background: #1d4ed8;

    transform: translateY(-2px);

    box-shadow: 0 5px 12px rgba(37, 99, 235, 0.20);
}


.logout-action {
    background: #f1f5f9;

    color: #334155;

    border: 1px solid #cbd5e1;
}


.logout-action:hover {
    background: #e2e8f0;

    transform: translateY(-2px);
}


/* =========================
   FOOTER
========================= */

.footer {
    text-align: center;

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

        margin: 35px auto;
    }


    .confirmation-card {
        padding: 35px 20px;
    }


    .confirmation-card h1 {
        font-size: 24px;
    }


    .detail-row {
        gap: 15px;

        text-align: left;
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


<%

    /*
     * Existing session data.
     * No changes to your backend flow.
     */

    ProductBean bean =
        (ProductBean) session.getAttribute("pbean");


    CustomerBean customer =
        (CustomerBean) session.getAttribute("custbean");


    String name =
        customer.getC_fname();


    /*
     * Existing calculation.
     * Kept exactly as in your original JSP.
     */

    int price =
        Integer.parseInt(bean.getP_price())
        *
        Integer.parseInt(request.getParameter("req"));

%>


<!-- =========================
     NAVBAR
========================= -->

<nav class="navbar">


    <div class="logo">
        Customer Portal
    </div>


    <!-- Existing URL - unchanged -->

    <a
        href="clogout"
        class="logout-btn">

        Logout

    </a>


</nav>



<!-- =========================
     MAIN CONTENT
========================= -->

<main class="container">


    <div class="confirmation-card">


        <!-- =========================
             SUCCESS ICON
        ========================= -->

        <div class="success-icon">
            ✓
        </div>


        <!-- =========================
             CONFIRMATION HEADING
        ========================= -->

        <h1>
            Order Confirmed!
        </h1>


        <p class="greeting">

            Hello

            <span class="customer-name">
                <%= name %>
            </span>

            , your order has been successfully confirmed.

        </p>



        <!-- =========================
             ORDER DETAILS
        ========================= -->

        <div class="order-details">


            <!-- PRODUCT -->

            <div class="detail-row">

                <span class="detail-label">
                    Product
                </span>

                <span class="detail-value">
                    <%= bean.getP_name() %>
                </span>

            </div>


            <!-- PRODUCT CODE -->

            <div class="detail-row">

                <span class="detail-label">
                    Product Code
                </span>

                <span class="detail-value">
                    <%= bean.getP_code() %>
                </span>

            </div>


            <!-- COMPANY -->

            <div class="detail-row">

                <span class="detail-label">
                    Company
                </span>

                <span class="detail-value">
                    <%= bean.getP_company() %>
                </span>

            </div>


            <!-- PRICE PER UNIT -->

            <div class="detail-row">

                <span class="detail-label">
                    Price per Unit
                </span>

                <span class="detail-value">
                    ₹<%= bean.getP_price() %>
                </span>

            </div>


            <!-- REQUESTED QUANTITY -->

            <div class="detail-row">

                <span class="detail-label">
                    Quantity Ordered
                </span>

                <span class="detail-value">
                    <%= request.getParameter("req") %>
                </span>

            </div>


            <!-- TOTAL -->

            <div class="detail-row total-row">

                <span class="total-label">
                    Total Amount
                </span>

                <span class="total-value">
                    ₹<%= price %>
                </span>

            </div>


        </div>



        <!-- =========================
             SUCCESS MESSAGE
        ========================= -->

        <div class="success-message">

            ✓ Your order has been confirmed successfully.

            Thank you for shopping with us!

        </div>



        <!-- =========================
             ACTION BUTTONS
        ========================= -->

        <div class="actions">


            <!-- Existing URL - unchanged -->

            <a
                href="vcp"
                class="btn products-btn">

                Continue Shopping

            </a>


            <!-- Existing URL - unchanged -->

            <a
                href="clogout"
                class="btn logout-action">

                Logout

            </a>


        </div>


    </div>



    <!-- FOOTER -->

    <div class="footer">

        Customer Management System &copy; 2026

    </div>


</main>


</body>

</html>