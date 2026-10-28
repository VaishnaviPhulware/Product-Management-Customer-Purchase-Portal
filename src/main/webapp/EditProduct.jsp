<%-- 
<%@ page import="com.bean.ProductBean" %>
<%@ page import="com.bean.AdminBean" %>

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
		AdminBean bean =(AdminBean)session.getAttribute("adminbean");
		out.println("Hello "+bean.getA_fname()+" Please Edit");
		ProductBean pb = (ProductBean)request.getAttribute("pbean");
	%>
	<form action="update" method="post">
	Product price <input type="text" name="pprice" value="<%= pb.getP_price() %>" ><br><br>
	Product Quantity <input type="text" name="pqty" value="<%= pb.getP_quantity() %>" ><br><br>
	<input type="hidden" name="pcode" value="<%= pb.getP_code() %>">
	<input type="submit" value="Update Details"><br><br>
	</form>
	</h1>
</body>
</html>
--%>
<%@ page import="com.bean.ProductBean" %>
<%@ page import="com.bean.AdminBean" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Edit Product</title>

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

    .page-container {
        width: 90%;
        max-width: 600px;
        margin: 55px auto;
    }


    /* =========================
       Edit Card
    ========================= */

    .edit-card {
        background: white;
        padding: 40px;
        border-radius: 15px;
        border: 1px solid #e2e8f0;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.07);
    }


    /* =========================
       Header
    ========================= */

    .edit-header {
        text-align: center;
        margin-bottom: 35px;
    }

    .edit-icon {
        width: 70px;
        height: 70px;
        margin: 0 auto 18px;
        display: flex;
        justify-content: center;
        align-items: center;
        background: #dbeafe;
        color: #2563eb;
        border-radius: 50%;
        font-size: 32px;
    }

    .edit-header h1 {
        color: #1e293b;
        font-size: 27px;
        margin-bottom: 8px;
    }

    .edit-header p {
        color: #64748b;
        font-size: 14px;
    }

    .admin-name {
        color: #2563eb;
        font-weight: 600;
    }


    /* =========================
       Form
    ========================= */

    .form-group {
        margin-bottom: 22px;
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
        padding: 13px 15px;
        border: 1px solid #cbd5e1;
        border-radius: 8px;
        outline: none;
        color: #1e293b;
        font-size: 15px;
        transition: 0.3s;
    }

    .form-group input:focus {
        border-color: #2563eb;
        box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
    }

    .form-group input:read-only {
        background: #f8fafc;
        color: #64748b;
        cursor: not-allowed;
    }

    .error-message {
        display: none;
        color: #dc2626;
        font-size: 13px;
        margin-top: 6px;
    }


    /* =========================
       Update Button
    ========================= */

    .update-btn {
        width: 100%;
        padding: 13px;
        border: none;
        border-radius: 8px;
        background: #2563eb;
        color: white;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        transition: 0.3s;
        margin-top: 5px;
    }

    .update-btn:hover {
        background: #1d4ed8;
        transform: translateY(-2px);
        box-shadow: 0 6px 15px rgba(37, 99, 235, 0.25);
    }


    /* =========================
       Responsive Design
    ========================= */

    @media (max-width: 600px) {

        .navbar {
            padding: 0 20px;
        }

        .logo {
            font-size: 18px;
        }

        .page-container {
            width: 92%;
            margin: 30px auto;
        }

        .edit-card {
            padding: 30px 22px;
        }

        .edit-header h1 {
            font-size: 24px;
        }

    }

</style>

</head>


<body>


<%

    AdminBean bean = (AdminBean) session.getAttribute("adminbean");

    ProductBean pb = (ProductBean) request.getAttribute("pbean");

%>


<!-- =========================
     Navigation Bar
========================= -->

<nav class="navbar">

    <div class="logo">
        Admin Panel
    </div>

    <!-- Existing URL -->
    <a href="logout" class="logout-btn">
        Logout
    </a>

</nav>


<!-- =========================
     Main Content
========================= -->

<main class="page-container">


    <div class="edit-card">


        <!-- Header -->

        <div class="edit-header">

            <div class="edit-icon">
                ✎
            </div>

            <h1>
                Edit Product
            </h1>

            <p>
                Hello <span class="admin-name">
                    <%= bean.getA_fname() %>
                </span>,
                update the product details below.
            </p>

        </div>


        <!-- =========================
             Edit Product Form
        ========================= -->

        <!-- Existing action and method NOT changed -->

        <form action="update" method="post"
              onsubmit="return validateUpdateForm()">


            <!-- Product Price -->

            <div class="form-group">

                <label for="pprice">
                    Product Price
                </label>

                <input
                    type="number"
                    id="pprice"
                    name="pprice"
                    value="<%= pb.getP_price() %>"
                    min="0"
                    step="0.01"
                    placeholder="Enter product price">

                <div class="error-message" id="priceError">
                    Please enter a valid product price.
                </div>

            </div>


            <!-- Product Quantity -->

            <div class="form-group">

                <label for="pqty">
                    Product Quantity
                </label>

                <input
                    type="number"
                    id="pqty"
                    name="pqty"
                    value="<%= pb.getP_quantity() %>"
                    min="0"
                    step="1"
                    placeholder="Enter product quantity">

                <div class="error-message" id="quantityError">
                    Please enter a valid product quantity.
                </div>

            </div>


            <!-- Hidden Product Code -->

            <input
                type="hidden"
                name="pcode"
                value="<%= pb.getP_code() %>">


            <!-- Submit Button -->

            <input
                type="submit"
                value="Update Details"
                class="update-btn">


        </form>

    </div>


</main>


<!-- =========================
     JavaScript Validation
========================= -->

<script>

function validateUpdateForm() {

    let price = document.getElementById("pprice");
    let quantity = document.getElementById("pqty");

    let priceError = document.getElementById("priceError");
    let quantityError = document.getElementById("quantityError");

    let isValid = true;


    // Reset errors

    priceError.style.display = "none";
    quantityError.style.display = "none";

    price.style.borderColor = "#cbd5e1";
    quantity.style.borderColor = "#cbd5e1";


    // Price Validation

    if (price.value.trim() === "" || Number(price.value) < 0) {

        priceError.style.display = "block";
        price.style.borderColor = "#dc2626";

        isValid = false;
    }


    // Quantity Validation

    if (quantity.value.trim() === "" || Number(quantity.value) < 0) {

        quantityError.style.display = "block";
        quantity.style.borderColor = "#dc2626";

        isValid = false;
    }


    return isValid;

}

</script>


</body>

</html>