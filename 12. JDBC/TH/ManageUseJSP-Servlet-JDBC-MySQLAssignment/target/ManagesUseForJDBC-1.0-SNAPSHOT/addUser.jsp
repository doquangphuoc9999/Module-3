<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/3/2021
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Users</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
    <h2>
        <p>
            <a href="/showUser">List User</a>
        </p>
    </h2>
    <p class="text-success">${message}</p>

    <form action="/createUser" method="post">
        <label>User name</label><br>
        <input type="text" name="nameUser" placeholder="Enter your name..."><br>
        <label>Gmail</label><br>
        <input type="text" name="emailUser" placeholder="Enter your gmail..."><br>
        <label>Address</label><br>
        <input type="text" name="nameUser" placeholder="Enter your address..."><br>
        <input type="reset">
        <input type="submit">
    </form>

</body>
</html>
