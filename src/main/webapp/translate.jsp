<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Long
  Date: 10/23/2018
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<String, String>(); %>
<%
    dictionary.put("hello", "Xin chào");
    dictionary.put("nice", "oc cho");
    dictionary.put("computer", "Máy tính");
    dictionary.put("book", "sach");

    String search = request.getParameter("word");

    String result = dictionary.get(search);

    if (result != null) {
        out.println(search + " is: " + result);
    } else out.println("Not found");
%>
</body>
</html>
