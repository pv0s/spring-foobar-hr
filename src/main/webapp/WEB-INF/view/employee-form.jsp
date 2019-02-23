<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Save Employee</title>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>

</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>Foobar Human Resource Manager</h2>
    </div>
</div>

<div id="container">

    <h3>Save Employee</h3>

    <form:form modelAttribute="employee" method="POST" action="save">

        <form:hidden path="id"/>


        <table>
            <tbody>
            <tr>
                <td><label>First name</label></td>
                <td><form:input path="firstName"/></td>
            </tr>
            <tr>
                <td><label>Last name</label></td>
                <td><form:input path="lastName"/></td>
            </tr>
            <tr>
                <td><label>Email</label></td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td><label>Role</label></td>
                <td><form:input path="role"/></td>
            </tr>
            <tr>
                <td><label>Street Name</label></td>
                <td><form:input path="address.streetName"/></td>
            </tr>
            <tr>
                <td><label>Street Number</label></td>
                <td><form:input path="address.streetNumber"/></td>
            </tr>
            <tr>
                <td><label>Suburb</label></td>
                <td><form:input path="address.suburb"/></td>
            </tr>
            <tr>
                <td><label>Postal Code</label></td>
                <td><form:input path="address.postalCode"/></td>
            </tr>

            <form:hidden path="address.id"/>

            <tr>
                <td><input type="submit" value="Save"></td>
            </tr>

            </tbody>
        </table>

    </form:form>

</div>

<div style="clear: both;">
  <p><a href="${pageContext.request.contextPath}/employees/list">Back to list</a></p>
</div>

</body>
</html>
