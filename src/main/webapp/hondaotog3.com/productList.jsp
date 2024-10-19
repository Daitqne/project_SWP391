<%-- 
    Document   : listProduct
    Created on : Mar 9, 2024, 5:21:14 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headerAdmin.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .custom-button a {
                text-decoration: none;
                color: inherit;
            }
        </style>
    </head>
    <body>
        <div class="row">
                <div class="col-md-4 mt-3">
                    <div class="card">

                        <a href="#">
                            <img src="" class="card-img-top" alt="Product Image">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title"></h5>
                            <p class="card-text">Price: <span style="color: red">VND</span></p>
                            <form action="product_management" method="post">
                                <button class="btn btn-danger custom-button">
<!--                                <a  href="#">Delete</a>-->
                                    <input type="hidden" value="#" name="id"><input type="submit" value="Delete" class="btn btn-danger container-fluid">
                                </button>
                            </form>
                        </div>

                    </div>
                </div>
        </div>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
</html>