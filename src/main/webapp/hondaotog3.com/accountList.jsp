<%-- 
    Document   : listAccount
    Created on : Mar 9, 2024, 6:04:14 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headerAdmin.jsp" %>
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
        <table class="table table-hover container" border="1">
            <thead>
                <tr>
                    <th>UserName</th>
                    <th>FristName</th>
                    <th>LastName</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Delete</th>
                    <th>Update</th>
                </tr>
            </thead>
            <c:forEach items="${listCustomer}" var="a">
                <tr>
                    <td>${a.username}</td>
                    <td>${a.firstName}</td>
                    <td>${a.lastName}</td>
                    <td>${a.email}</td>
                    <td>${a.address}</td>
                    <td><button class="custom-button btn btn-danger"><a href="#">Delete</a></button></td>
                    <td><button class="custom-button btn btn-danger"><a href="#">Update</a></button></td>
                </tr></c:forEach>
            </tbody>
        </table>

    </body>
</html>