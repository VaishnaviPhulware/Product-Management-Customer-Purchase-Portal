<%-- 
<%@ page import ="com.bean.ProductBean" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="java.util.Iterator" %>
<%@ page import ="com.bean.AdminBean" %>

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
	AdminBean abean = (AdminBean) session.getAttribute("adminbean");
	out.println("Hello Vaishnavi these are your product details!!!<br><br>");
		ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("list");
		
		if(al == null)
		{
			out.println("There no product purchaesd...");
		}
		else{
			Iterator<ProductBean > i = al.iterator();
			while(i.hasNext()){
			ProductBean pb =i.next();
			out.println(pb.getP_code()+"  "+pb.getP_name()+"  "+pb.getP_company()+"  "+pb.getP_price()+"  "+pb.getP_quantity()+"  "+
			"<a href='edit?pcode="+pb.getP_code()+"'>Edit</a>"+" "+
			"<a href='delete?pcode="+pb.getP_code()+"'>Delete</a>"+"  "+"<br><br>");
		}
		}
	%>
	<a href="logout">LogOut</a><br><br>
	</h1>
</body>
</html>
--%>

<%@ page import="com.bean.ProductBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.bean.AdminBean" %>

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

    .page-container {
        width: 92%;
        max-width: 1200px;
        margin: 45px auto;
    }


    /* =========================
       Page Header
    ========================= */

    .page-header {
        background: white;
        padding: 30px;
        border-radius: 12px;
        margin-bottom: 25px;
        border-left: 5px solid #2563eb;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
    }


    .page-header h1 {
        color: #1e293b;
        font-size: 27px;
        margin-bottom: 8px;
    }


    .page-header p {
        color: #64748b;
        font-size: 15px;
    }


    .admin-name {
        color: #2563eb;
        font-weight: 600;
    }


    /* =========================
       Product Table Card
    ========================= */

    .table-card {
        background: white;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
        border: 1px solid #e2e8f0;
        overflow-x: auto;
    }


    .table-title {
        font-size: 20px;
        font-weight: 600;
        color: #1e293b;
        margin-bottom: 20px;
    }


    /* =========================
       Product Table
    ========================= */

    .product-table {
        width: 100%;
        border-collapse: collapse;
        min-width: 750px;
    }


    .product-table th {
        background: #1e3a8a;
        color: white;
        padding: 14px 16px;
        text-align: left;
        font-size: 14px;
        font-weight: 600;
    }


    .product-table th:first-child {
        border-radius: 7px 0 0 0;
    }


    .product-table th:last-child {
        border-radius: 0 7px 0 0;
    }


    .product-table td {
        padding: 14px 16px;
        border-bottom: 1px solid #e2e8f0;
        color: #475569;
        font-size: 14px;
    }


    .product-table tbody tr {
        transition: 0.2s;
    }


    .product-table tbody tr:hover {
        background: #f8fafc;
    }


    /* =========================
       Action Buttons
    ========================= */

    .edit-btn,
    .delete-btn {
        display: inline-block;
        padding: 7px 14px;
        border-radius: 5px;
        text-decoration: none;
        color: white;
        font-size: 13px;
        font-weight: 600;
        transition: 0.3s;
    }


    .edit-btn {
        background: #2563eb;
    }


    .edit-btn:hover {
        background: #1d4ed8;
    }


    .delete-btn {
        background: #dc2626;
    }


    .delete-btn:hover {
        background: #b91c1c;
    }


    /* =========================
       Empty Product Message
    ========================= */

    .empty-message {
        text-align: center;
        padding: 50px 20px;
    }


    .empty-icon {
        font-size: 45px;
        margin-bottom: 15px;
    }


    .empty-message h2 {
        color: #334155;
        font-size: 22px;
        margin-bottom: 8px;
    }


    .empty-message p {
        color: #64748b;
        font-size: 14px;
    }


    /* =========================
       Footer
    ========================= */

    .footer {
        text-align: center;
        margin-top: 45px;
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


        .page-container {
            width: 94%;
            margin: 30px auto;
        }


        .page-header {
            padding: 25px 20px;
        }


        .page-header h1 {
            font-size: 23px;
        }


        .table-card {
            padding: 15px;
        }

    }

</style>

</head>


<body>


<%

    AdminBean abean =
        (AdminBean) session.getAttribute("adminbean");

    ArrayList<ProductBean> al =
        (ArrayList<ProductBean>) session.getAttribute("list");

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
     Main Content
========================= -->

<main class="page-container">


    <!-- Page Header -->

    <section class="page-header">

        <h1>
            Product Management
        </h1>

        <p>
            Hello
            <span class="admin-name">
                <%= abean.getA_fname() %>
            </span>,
            here are the products available in your system.
        </p>

    </section>



    <!-- Product Table -->

    <section class="table-card">


        <div class="table-title">
            Product Details
        </div>


        <%

        if (al == null || al.isEmpty()) {

        %>


            <!-- Empty Product Message -->

            <div class="empty-message">

                <div class="empty-icon">
                    📦
                </div>

                <h2>
                    No Products Found
                </h2>

                <p>
                    There are currently no products available in the system.
                </p>

            </div>


        <%

        } else {

        %>


            <table class="product-table">


                <thead>

                    <tr>

                        <th>
                            Product Code
                        </th>

                        <th>
                            Product Name
                        </th>

                        <th>
                            Company
                        </th>

                        <th>
                            Price
                        </th>

                        <th>
                            Quantity
                        </th>

                        <th>
                            Actions
                        </th>

                    </tr>

                </thead>


                <tbody>


                <%

                    for (ProductBean pb : al) {

                %>


                    <tr>

                        <td>
                            <%= pb.getP_code() %>
                        </td>

                        <td>
                            <%= pb.getP_name() %>
                        </td>

                        <td>
                            <%= pb.getP_company() %>
                        </td>

                        <td>
                            ₹ <%= pb.getP_price() %>
                        </td>

                        <td>
                            <%= pb.getP_quantity() %>
                        </td>

                        <td>

                            <!-- Existing URL NOT CHANGED -->

                            <a
                                href="edit?pcode=<%= pb.getP_code() %>"
                                class="edit-btn">
                                Edit
                            </a>


                            <!-- Existing URL NOT CHANGED -->

                            <a
                                href="delete?pcode=<%= pb.getP_code() %>"
                                class="delete-btn"
                                onclick="return confirmDelete();">
                                Delete
                            </a>

                        </td>

                    </tr>


                <%

                    }

                %>


                </tbody>


            </table>


        <%

        }

        %>


    </section>


    <!-- Footer -->

    <div class="footer">

        © 2026 Admin Panel. All Rights Reserved.

    </div>


</main>



<!-- =========================
     Delete Confirmation
========================= -->

<script>

function confirmDelete() {

    return confirm(
        "Are you sure you want to delete this product?"
    );

}

</script>


</body>

</html>