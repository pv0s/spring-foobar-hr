<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Foobar HR</title>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>

</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>Foobar Human Resource Manager</h2>
    </div>
</div>

<div id="container">
    <div id="content">


        <input type="button" value="Add new" onclick="window.location.href='showFormForAdd';return false;"/>

        <table>
            <tbody>
            <tr>
                <th>First name</th>
                <th>Last name</th>
                <th>Email</th>
                <th>Role</th>
                <th>StreetNumber</th>
                <th>StreetName</th>
                <th>Suburb</th>
                <th>PostalCode</th>
                <th>Action</th>
            </tr>

            <c:forEach var="employee" items="${employees}">

                <c:url var="updateLink" value="/employees/showFormForUpdate">
                    <c:param name="id" value="${employee.id}"/>
                </c:url>

                <c:url var="deleteLink" value="/employees/delete">
                    <c:param name="id" value="${employee.id}"/>
                </c:url>

                <tr>
                    <td>${employee.firstName}</td>
                    <td>${employee.lastName}</td>
                    <td>${employee.email}</td>
                    <td>${employee.role}</td>
                    <td>${employee.address.streetNumber}</td>
                    <td>${employee.address.streetName}</td>
                    <td>${employee.address.suburb}</td>
                    <td>${employee.address.postalCode}</td>
                    <td><a href="${updateLink}">Update</a> |
                        <a href="${deleteLink}">Delete</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>

    </div>
</div>


</body>
</html>
