<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/29/2021
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Converter</title>
</head>
<body>
    <%
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd = Float.parseFloat(request.getParameter("usd"));

        float result = rate * usd;
    %>

    <h3>Rate: <%= rate%></h3>
    <h3>Usd: <%= usd%></h3>
    <h3>Result: <%= result%></h3>
</body>
</html>
