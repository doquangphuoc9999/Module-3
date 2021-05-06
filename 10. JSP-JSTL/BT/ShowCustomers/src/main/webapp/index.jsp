<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Customers.Customerss" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/29/2021
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        ArrayList<Customerss> list = new ArrayList<>();
        list.add(new Customerss("Quang Phuoc", "2001-12-15","Hue","../img/images.jpg"));
        list.add(new Customerss("Thang ","1-1-1998","Hue","../img/thang.jpg"));
    %>
    <table>
        <tr>
            <td>Tên</td>
            <td>Ngày sinh</td>
            <td>Địa chỉ</td>
            <td>Ảnh</td>
        </tr>

        <c:forEach var="customer" items="<%=list%>">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.dateOfBird}</td>
                <td>${customer.address}</td>
                <td><img src="${customer.images}" style="width: 50px; height: 50px" ></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
