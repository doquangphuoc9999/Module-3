<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/29/2021
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%!
        Map<String, String> dic = new HashMap<>();
    %>
    <%
        dic.put("Hello", "Xin Chào");
        dic.put("thang", "lop trưởng");
        dic.put("Hai","30cm");

        String search = request.getParameter("keyWord");
        String result = dic.get(search);
        if (search != null){
            out.println("Word: " + search);
            out.println("Result: " + result);
        }
        else {
            out.println("Not found");
        }
    %>

</body>
</html>
