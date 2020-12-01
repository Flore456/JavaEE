<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Persons</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>First_name</td>
        <td>City</td>
        <td>Birthday</td>
        <td>Bank</td>
        <td>Car</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${personsList}" var="person">
        <tr>
            <td>${person.id}</td>
            <td>${person.name}</td>
            <td>${person.first_name}</td>
            <td>${person.city}</td>
            <td>${person.birthday}</td>
            <td>${person.bank.account_year}</td>
            <td>${person.bank.number_card}</td>
            <td>${person.bank.manager_name}</td>
            <td>${person.car.brand}</td>
            <td>${person.car.color}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
