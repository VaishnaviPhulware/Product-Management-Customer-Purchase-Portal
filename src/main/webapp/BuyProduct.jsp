<%--
<%@page import="com.bean.ProductBean"%>
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
	<%
	ProductBean pb = (ProductBean)request.getAttribute("pbean");
	%>
		<h1>
			<form action="bps" method="post">
			<label>Product Code :</label> <input type="text" name="pcode" readonly value="<%= pb.getP_code()%>"><br><br>
			<label>Product Name : </label><input type="text" name="pname" readonly value="<%= pb.getP_name()%>"><br><br>
			<label>Product company : </label><input type="text" name="pcmpy" readonly value="<%= pb.getP_company()%>"><br><br>
			<label>Product price : </label><input type="text" name="pprice" readonly value="<%= pb.getP_price()%>"><br><br>
			<label>Product quantity : </label><input type="text" name="pqty" readonly value="<%= pb.getP_quantity()%>"><br><br>
			<label>Req no.</label><input type="text" name="req"><br><br> 
			<input type="submit" value="Buy">
			</form>
		</h1>
</body>
</html> 
 --%>
 
 <%@page import="com.bean.ProductBean"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Buy Product</title>


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

    padding-bottom: 40px;
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

    max-width: 700px;

    margin: 45px auto;
}


/* =========================
   CARD
========================= */

.buy-card {
    background: white;

    border: 1px solid #e2e8f0;

    border-radius: 15px;

    padding: 40px;

    box-shadow: 0 6px 25px rgba(0, 0, 0, 0.07);
}


/* =========================
   HEADER
========================= */

.page-header {
    text-align: center;

    margin-bottom: 30px;
}


.product-icon {
    width: 70px;

    height: 70px;

    border-radius: 50%;

    background: #dbeafe;

    display: flex;

    align-items: center;

    justify-content: center;

    font-size: 32px;

    margin: 0 auto 18px;
}


.page-header h1 {
    font-size: 28px;

    color: #1e293b;

    margin-bottom: 8px;
}


.page-header p {
    color: #64748b;

    font-size: 14px;
}


/* =========================
   PRODUCT DETAILS
========================= */

.product-details {
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

    padding: 11px 0;

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

    text-align: right;
}


.price {
    color: #2563eb;

    font-size: 18px;
}


/* =========================
   PURCHASE SECTION
========================= */

.purchase-section {
    margin-top: 10px;
}


.purchase-section h2 {
    font-size: 19px;

    color: #1e293b;

    margin-bottom: 7px;
}


.purchase-section p {
    color: #64748b;

    font-size: 13px;

    margin-bottom: 18px;
}


/* =========================
   FORM GROUP
========================= */

.form-group {
    margin-bottom: 20px;
}


.form-group label {
    display: block;

    color: #334155;

    font-size: 14px;

    font-weight: 600;

    margin-bottom: 8px;
}


.form-group input {
    width: 100%;

    padding: 13px 14px;

    border: 1px solid #cbd5e1;

    border-radius: 8px;

    outline: none;

    background: white;

    color: #1e293b;

    font-size: 15px;

    transition: 0.3s;
}


.form-group input:focus {
    border-color: #2563eb;

    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
}


.form-group input::placeholder {
    color: #94a3b8;
}


/* =========================
   READONLY INPUTS
========================= */

.readonly-input {
    background: #f8fafc !important;

    color: #475569 !important;

    cursor: not-allowed;
}


/* =========================
   ERROR MESSAGE
========================= */

.error-message {
    display: none;

    color: #dc2626;

    font-size: 12px;

    margin-top: 6px;
}


/* =========================
   STOCK MESSAGE
========================= */

.stock-info {
    display: inline-block;

    background: #dcfce7;

    color: #15803d;

    padding: 6px 11px;

    border-radius: 20px;

    font-size: 12px;

    font-weight: 600;

    margin-top: 5px;
}


/* =========================
   BUY BUTTON
========================= */

.buy-btn {
    width: 100%;

    border: none;

    border-radius: 8px;

    padding: 14px;

    background: #2563eb;

    color: white;

    font-size: 16px;

    font-weight: 600;

    cursor: pointer;

    transition: 0.3s;
}


.buy-btn:hover {
    background: #1d4ed8;

    transform: translateY(-2px);

    box-shadow: 0 6px 15px rgba(37, 99, 235, 0.25);
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

        margin: 30px auto;
    }


    .buy-card {
        padding: 25px 20px;
    }


    .page-header h1 {
        font-size: 24px;
    }


    .detail-row {
        align-items: flex-start;

        gap: 15px;
    }

}

</style>

</head>


<body>


<%

    /*
     * Getting ProductBean from request.
     * Existing data flow is unchanged.
     */

    ProductBean pb =
        (ProductBean) request.getAttribute("pbean");

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


    <div class="buy-card">


        <!-- =========================
             HEADER
        ========================= -->

        <div class="page-header">


            <div class="product-icon">
                🛒
            </div>


            <h1>
                Buy Product
            </h1>


            <p>
                Review the product details and enter the quantity you need.
            </p>


        </div>



        <!-- =========================
             PRODUCT DETAILS
        ========================= -->

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


            <!-- PRODUCT NAME -->

            <div class="detail-row">

                <span class="detail-label">
                    Product Name
                </span>

                <span class="detail-value">
                    <%= pb.getP_name() %>
                </span>

            </div>


            <!-- COMPANY -->

            <div class="detail-row">

                <span class="detail-label">
                    Company
                </span>

                <span class="detail-value">
                    <%= pb.getP_company() %>
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


            <!-- AVAILABLE QUANTITY -->

            <div class="detail-row">

                <span class="detail-label">
                    Available Quantity
                </span>

                <span class="detail-value">
                    <%= pb.getP_quantity() %>
                </span>

            </div>


        </div>



        <!-- =========================
             PURCHASE FORM
        ========================= -->

        <div class="purchase-section">


            <h2>
                Purchase Details
            </h2>


            <p>
                Enter the number of units you want to purchase.
            </p>


            <form
                action="bps"
                method="post"
                onsubmit="return validatePurchase();">


                <!-- PRODUCT CODE -->

                <div class="form-group">

                    <label for="pcode">
                        Product Code
                    </label>

                    <input
                        type="text"
                        id="pcode"
                        name="pcode"
                        readonly
                        class="readonly-input"
                        value="<%= pb.getP_code()%>">

                </div>



                <!-- PRODUCT NAME -->

                <div class="form-group">

                    <label for="pname">
                        Product Name
                    </label>

                    <input
                        type="text"
                        id="pname"
                        name="pname"
                        readonly
                        class="readonly-input"
                        value="<%= pb.getP_name()%>">

                </div>



                <!-- PRODUCT COMPANY -->

                <div class="form-group">

                    <label for="pcmpy">
                        Product Company
                    </label>

                    <input
                        type="text"
                        id="pcmpy"
                        name="pcmpy"
                        readonly
                        class="readonly-input"
                        value="<%= pb.getP_company()%>">

                </div>



                <!-- PRODUCT PRICE -->

                <div class="form-group">

                    <label for="pprice">
                        Product Price
                    </label>

                    <input
                        type="text"
                        id="pprice"
                        name="pprice"
                        readonly
                        class="readonly-input"
                        value="<%= pb.getP_price()%>">

                </div>



                <!-- AVAILABLE QUANTITY -->

                <div class="form-group">

                    <label for="pqty">
                        Available Quantity
                    </label>

                    <input
                        type="text"
                        id="pqty"
                        name="pqty"
                        readonly
                        class="readonly-input"
                        value="<%= pb.getP_quantity()%>">

                    <span class="stock-info">
                        <%= pb.getP_quantity() %> units available
                    </span>

                </div>



                <!-- REQUESTED QUANTITY -->

                <div class="form-group">

                    <label for="req">
                        Required Quantity
                    </label>

                    <input
                        type="text"
                        id="req"
                        name="req"
                        placeholder="Enter quantity"
                        autocomplete="off"
                        oninput="clearQuantityError();">


                    <div
                        id="quantityError"
                        class="error-message">

                        Please enter a valid quantity.

                    </div>

                </div>



                <!-- BUY BUTTON -->

                <input
                    type="submit"
                    value="Buy Product"
                    class="buy-btn">


            </form>


        </div>


    </div>


    <div class="footer">

        Customer Management System &copy; 2026

    </div>


</main>



<!-- =========================
     JAVASCRIPT VALIDATION
========================= -->

<script>


function validatePurchase() {


    var requestedQuantity =
        document.getElementById("req").value.trim();


    var availableQuantity =
        Number(document.getElementById("pqty").value);


    var error =
        document.getElementById("quantityError");


    var valid = true;


    /*
     * Hide previous error
     */

    error.style.display = "none";


    /*
     * Check empty value
     */

    if (requestedQuantity === "") {

        error.innerHTML =
            "Please enter the required quantity.";

        error.style.display = "block";

        return false;

    }


    /*
     * Check numeric value
     */

    if (
        isNaN(requestedQuantity) ||
        !Number.isInteger(Number(requestedQuantity))
    ) {

        error.innerHTML =
            "Quantity must be a whole number.";

        error.style.display = "block";

        return false;

    }


    /*
     * Check positive quantity
     */

    if (Number(requestedQuantity) <= 0) {

        error.innerHTML =
            "Quantity must be greater than zero.";

        error.style.display = "block";

        return false;

    }


    /*
     * Check available stock
     */

    if (Number(requestedQuantity) > availableQuantity) {

        error.innerHTML =
            "Requested quantity is greater than available stock.";

        error.style.display = "block";

        return false;

    }


    return valid;

}


function clearQuantityError() {

    document.getElementById("quantityError")
        .style.display = "none";

}

</script>


</body>

</html>