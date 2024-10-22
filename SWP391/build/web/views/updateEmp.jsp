<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Update Employee</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                color: #333;
                margin: 0;
                padding: 0;
            }
            .container {
                width: 50%;
                margin: 50px auto;
                padding: 20px;
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            h2 {
                color: #3498db;
                text-align: center;
                font-size: 24px;
                margin-bottom: 20px;
            }
            label {
                font-weight: bold;
                margin-bottom: 5px;
                display: block;
            }
            input[type="text"], input[type="email"], select {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
            }
            input[type="submit"] {
                background-color: #3498db;
                color: white;
                padding: 12px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                width: 100%;
                font-size: 16px;
                margin-top: 20px;
            }
            input[type="submit"]:hover {
                background-color: #2980b9;
            }
            p {
                color: red;
                font-size: 14px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Update Employee</h2>

            <!-- Hiển thị thông báo lỗi -->
            <c:if test="${not empty error}">
                <p>${error}</p>
            </c:if>

            <!-- Form update nhân viên -->
            <c:set var="emp" value="${requestScope.employee}" />
            <form action="${pageContext.request.contextPath}/UpdateEmployeeServlet" method="post">
                <input type="hidden" name="employeeId" value="${emp.employeeId}">
                
                <label>First Name:</label>
                <input type="text" id="firstName" name="firstName" value="${emp.firstName}" required>

                <label>Last Name:</label>
                <input type="text" id="lastName" name="lastName" value="${emp.lastName}" required>

                <label>Phone:</label>
                <input type="text" id="phone" name="phone" value="${emp.phone}" required>

                <label>Email:</label>
                <input type="email" id="email" name="email" value="${emp.email}" required>

                <label>Department:</label>
                <select id="departmentId" name="departmentId" required>
                    <c:forEach var="dept" items="${departments}">
                        <option value="${dept.departmentId}" ${emp.departmentId == dept.departmentId ? 'selected' : ''}>
                            ${dept.departmentName}
                        </option>
                    </c:forEach>
                </select>

                <input type="submit" value="Update Employee">
            </form>
        </div>
    </body>
</html>
