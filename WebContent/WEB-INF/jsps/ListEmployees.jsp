<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     <!--    <title>Insert title here</title> -->
        <title>Employee Details</title>
    </head>
    <body>
        <center>
            <h1>Employee Details</h1>
            <p align="right"><button onclick="window.location.href = 'showFormForAdd.html'; return false;">Add Employee</button></p>


            <hr />

            <table border="1">
                <tr>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Hobbies</th>
                    <th>Country</th>
                    <th>Address</th>
                    <th>Actions</th>
                </tr>
                <c:forEach items="${employeeList}" var="e">
                    <c:url var="updateLink" value="/employee/displayUpdateForm.html">
                        <c:param name="employeeId" value="${e.id}" />
                    </c:url>

                    <c:url var="deleteLink" value="/employee/displayDeleteForm.html">
                        <c:param name="employeeId" value="${e.id}" />
                    </c:url>
                    <tr>
                        <td>${e.fullname}</td>
                        <td>${e.email}</td>
                        <td>${e.gender}</td>
                        <td>${e.hobbies}</td>
                        <td>${e.country}</td>
                        <td>${e.address}</td>
                        <td>
                            <a href="${updateLink}">Update</a>
                            |
                            <a href="${deleteLink}" onclick="if (!(confirm('Are you sure want to delete this Employee permanently?')))
            return false">Delete</a></td>
                    </tr>
                </c:forEach></table>
        </center>

        <hr />

    </body>
</html>