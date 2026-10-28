<%-- 
<%@page import="java.util.Iterator"%>
<%@page import="com.bean.CustomerBean"%>
<%@page import="com.bean.ProductBean"%>
<%@page import="java.util.ArrayList"%>
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
		CustomerBean cb =(CustomerBean)session.getAttribute("custbean");
		ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("list");
		String name = (String)cb.getC_fname();
		out.println("Hello "+name+" !!!<br><br>");
		if(al == null)
		{
			out.println("There no product purchaesd...<br><br>");
		}
		else{
			Iterator<ProductBean > i = al.iterator();
			while(i.hasNext()){
			ProductBean pb =i.next();
			out.println(pb.getP_code()+"  "+pb.getP_name()+"  "+pb.getP_company()+"  "+pb.getP_price()+"  "+pb.getP_quantity()+"  "+
			"<a href='buy?pcode="+pb.getP_code()+"'>Buy</a><br><br>");
		}
		}

	%>
	<a href="clogout">Logout</a><br><br>
	</h1>
</body>
</html>--%>


<%@page import="java.util.Iterator"%>
<%@page import="com.bean.CustomerBean"%>
<%@page import="com.bean.ProductBean"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Available Products</title>


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


.nav-right {
    display: flex;

    align-items: center;

    gap: 20px;
}


.welcome-text {
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

    max-width: 1200px;

    margin: 45px auto;
}


/* =========================
   PAGE HEADER
========================= */

.page-header {
    background: white;

    padding: 30px;

    border-radius: 14px;

    border: 1px solid #e2e8f0;

    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);

    margin-bottom: 30px;
}


.page-header h1 {
    font-size: 28px;

    color: #1e293b;

    margin-bottom: 8px;
}


.customer-name {
    color: #2563eb;
}


.page-header p {
    color: #64748b;

    font-size: 14px;
}


/* =========================
   PRODUCT GRID
========================= */

.product-grid {
    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 25px;
}


/* =========================
   PRODUCT CARD
========================= */

.product-card {
    background: white;

    border: 1px solid #e2e8f0;

    border-radius: 14px;

    padding: 25px;

    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);

    transition: 0.3s;
}


.product-card:hover {
    transform: translateY(-5px);

    box-shadow: 0 10px 28px rgba(0, 0, 0, 0.10);
}


/* =========================
   PRODUCT ICON
========================= */

.product-icon {
    width: 55px;

    height: 55px;

    border-radius: 12px;

    background: #dbeafe;

    display: flex;

    align-items: center;

    justify-content: center;

    font-size: 26px;

    margin-bottom: 18px;
}


/* =========================
   PRODUCT NAME
========================= */

.product-card h2 {
    color: #1e293b;

    font-size: 20px;

    margin-bottom: 6px;
}


.company {
    color: #64748b;

    font-size: 14px;

    margin-bottom: 20px;
}


/* =========================
   PRODUCT DETAILS
========================= */

.product-details {
    border-top: 1px solid #e2e8f0;

    padding-top: 16px;

    margin-bottom: 20px;
}


.detail-row {
    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 11px;

    font-size: 14px;
}


.detail-label {
    color: #64748b;
}


.detail-value {
    color: #1e293b;

    font-weight: 600;
}


.price {
    color: #2563eb;

    font-size: 18px;
}


/* =========================
   STOCK STATUS
========================= */

.stock {
    display: inline-block;

    padding: 5px 10px;

    border-radius: 20px;

    font-size: 12px;

    font-weight: 600;
}


.in-stock {
    background: #dcfce7;

    color: #15803d;
}


.out-of-stock {
    background: #fee2e2;

    color: #b91c1c;
}


/* =========================
   BUY BUTTON
========================= */

.buy-btn {
    display: block;

    width: 100%;

    text-align: center;

    text-decoration: none;

    background: #2563eb;

    color: white;

    padding: 11px 15px;

    border-radius: 7px;

    font-size: 14px;

    font-weight: 600;

    transition: 0.3s;
}


.buy-btn:hover {
    background: #1d4ed8;

    transform: translateY(-2px);

    box-shadow: 0 5px 12px rgba(37, 99, 235, 0.20);
}


/* =========================
   EMPTY PRODUCT MESSAGE
========================= */

.empty-card {
    background: white;

    border: 1px solid #e2e8f0;

    border-radius: 14px;

    padding: 55px 30px;

    text-align: center;

    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
}


.empty-icon {
    font-size: 45px;

    margin-bottom: 18px;
}


.empty-card h2 {
    color: #334155;

    font-size: 22px;

    margin-bottom: 8px;
}


.empty-card p {
    color: #64748b;

    font-size: 14px;
}


/* =========================
   FOOTER
========================= */

.footer {
    text-align: center;

    padding: 25px;

    margin-top: 45px;

    color: #94a3b8;

    font-size: 13px;
}


/* =========================
   RESPONSIVE
========================= */

@media (max-width: 950px) {

    .product-grid {
        grid-template-columns: repeat(2, 1fr);
    }

}


@media (max-width: 650px) {

    .navbar {
        padding: 0 20px;
    }


    .logo {
        font-size: 18px;
    }


    .welcome-text {
        display: none;
    }


    .container {
        width: 92%;

        margin: 30px auto;
    }


    .page-header {
        padding: 25px;
    }


    .page-header h1 {
        font-size: 24px;
    }


    .product-grid {
        grid-template-columns: 1fr;
    }

}

</style>

</head>


<body>


<%

    /*
     * Getting customer information.
     * Existing session attribute is unchanged.
     */

    CustomerBean cb =
        (CustomerBean) session.getAttribute("custbean");


    /*
     * Getting product list.
     * Existing session attribute is unchanged.
     */

    ArrayList<ProductBean> al =
        (ArrayList<ProductBean>) session.getAttribute("list");


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


        <span class="welcome-text">

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


    <!-- PAGE HEADER -->

    <section class="page-header">


        <h1>

            Available Products

        </h1>


        <p>

            Hello

            <span class="customer-name">
                <%= name %>
            </span>

            , explore our available products and choose what you need.

        </p>


    </section>



<%

    if (al == null || al.isEmpty()) {

%>


    <!-- =========================
         NO PRODUCTS
    ========================= -->

    <div class="empty-card">


        <div class="empty-icon">
            📦
        </div>


        <h2>
            No Products Available
        </h2>


        <p>
            There are currently no products available.
            Please check again later.
        </p>


    </div>


<%

    } else {

%>


    <!-- =========================
         PRODUCT GRID
    ========================= -->

    <div class="product-grid">


<%

        Iterator<ProductBean> i =
            al.iterator();


        while (i.hasNext()) {


            ProductBean pb =
                i.next();

%>


        <!-- =========================
             PRODUCT CARD
        ========================= -->

        <div class="product-card">


            <div class="product-icon">
                🛍️
            </div>


            <h2>
                <%= pb.getP_name() %>
            </h2>


            <div class="company">
                <%= pb.getP_company() %>
            </div>


            <div class="product-details">


                <!-- PRODUCT CODE -->

                <div class="detail-row">

                    <span class="detail-label">
                        Product Code
                    </span>

                    <span class="detail-value">
                        <%= pb.getP_code() %>
                    </span>

                </div>


                <!-- PRICE -->

                <div class="detail-row">

                    <span class="detail-label">
                        Price
                    </span>

                    <span class="detail-value price">
                        ₹<%= pb.getP_price() %>
                    </span>

                </div>


                <!-- QUANTITY -->

                <div class="detail-row">

                    <span class="detail-label">
                        Available Quantity
                    </span>

                    <span class="detail-value">

                        <%= pb.getP_quantity() %>

                    </span>

                </div>


                <!-- STOCK STATUS -->

                <div class="detail-row">

                    <span class="detail-label">
                        Status
                    </span>


                    <%

                        if (Integer.parseInt(pb.getP_quantity()) > 0) {

                    %>

                        <span class="stock in-stock">
                            In Stock
                        </span>

                    <%

                        } else {

                    %>

                        <span class="stock out-of-stock">
                            Out of Stock
                        </span>

                    <%

                        }

                    %>


                </div>


            </div>



            <!-- =========================
                 BUY BUTTON
            ========================= -->


            <%

                if (Integer.parseInt(pb.getP_quantity()) > 0) {

            %>


                <!-- Existing URL - unchanged -->

                <a
                    href="buy?pcode=<%= pb.getP_code() %>"
                    class="buy-btn">

                    Buy Product

                </a>


            <%

                } else {

            %>


                <div
                    class="buy-btn"
                    style="background-color:#94a3b8; cursor:not-allowed;">

                    Out of Stock

                </div>


            <%

                }

            %>


        </div>


<%

        }

%>


    </div>


<%

    }

%>


    <!-- FOOTER -->

    <div class="footer">

        Customer Management System &copy; 2026

    </div>


</main>


</body>

</html>
