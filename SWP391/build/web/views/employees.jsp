<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>Employee Management</title>
        <c:if test="${not empty message}">
        <p style="color: green; text-align: center; font-size: 1.2em;">${message}</p>
    </c:if>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }
        h2 {
            color: #2c3e50;
            font-size: 2em;
            margin-bottom: 20px;
        }
        form {
            margin: 0 10px;
        }
        input[type="text"] {
            padding: 10px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"], input[type="button"] {
            padding: 10px 15px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
        }
        input[type="submit"]:hover, input[type="button"]:hover {
            background-color: #2980b9;
        }
        select {
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        table {
            width: 90%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #3498db;
            color: white;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        a {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
        .actions a {
            margin-right: 10px;
        }
        .center {
            text-align: center;
        }
        p {
            font-size: 1em;
            margin: 10px 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
    </style>
    <script type="text/javascript">
        function doDelete(id) {
            if (confirm("Do you want to delete employee with id = " + id)) {
                window.location = "DeleteEmployeeServlet?id=" + id;
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <center>
            <h2>Employee List</h2> 

            <!-- Form tìm kiếm nhân viên -->
            <form action="SearchEmployeeServlet" method="get" style="display:inline-block;">
                <input type="text" name="search" value="${param.search}" placeholder="Search by name..." />
                <input type="submit" value="Search" />
            </form>

            <!-- Form lọc theo phòng ban -->
            <form action="SearchEmployeeServlet" method="get" style="display:inline-block;">
                <select name="departmentId">
                    <option value="">-- Select Department --</option>
                    <!-- Hiển thị danh sách phòng ban -->
                    <c:forEach var="department" items="${requestScope.departmentList}">
                        <option value="${department.departmentId}" 
                                <c:if test="${param.departmentId == department.departmentId}">selected</c:if>>
                            ${department.departmentName}
                        </option>
                    </c:forEach>
                </select>
                <input type="submit" value="Filter" />
            </form>

            <!-- Nút để trả về danh sách ban đầu (không tìm kiếm, không lọc) -->
            <c:if test="${not empty param.search || not empty param.departmentId}">
                <input type="button" value="Show All" onclick="window.location.href = 'SearchEmployeeServlet';" />
            </c:if>
            <a href="views/addemp.jsp">Add New Employee</a>
            <!-- Hiển thị thông báo nếu không có kết quả -->
            <c:if test="${not empty noResultMessage}">
                <p style="color: red;">${noResultMessage}</p>
            </c:if>


            <!-- Hiển thị bảng nhân viên nếu có kết quả -->
            <c:if test="${not empty employeeList}">
                <table border="1" width="90%">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Department</th>
                        <th class="actions">Actions</th>
                    </tr>
                    <c:forEach var="employee" items="${requestScope.employeeList}">
                        <tr>
                            <td>${employee.firstName}</td>
                            <td>${employee.lastName}</td>
                            <td>${employee.phone}</td>
                            <td>${employee.email}</td>
                            <td>${employee.departmentName}</td>
                            <td class="actions">
                                <a href="UpdateEmployeeServlet?id=${employee.employeeId}">Edit</a>
                                <a href="javascript:void(0);" onclick="doDelete(${employee.employeeId})">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <!-- Các nút phân trang -->
            <div class="pagination">
                <c:if test="${currentPage > 1}">
                    <a href="ViewEmployeeServlet?page=${currentPage - 1}">Trước</a>
                </c:if>

                <c:forEach begin="1" end="${totalPages}" var="i">
                    <a href="ViewEmployeeServlet?page=${i}">${i}</a>
                </c:forEach>

                <c:if test="${currentPage < totalPages}">
                    <a href="ViewEmployeeServlet?page=${currentPage + 1}">Tiếp</a>
                </c:if>
            </div>
        </center>
    </div>
</body>
</html>
