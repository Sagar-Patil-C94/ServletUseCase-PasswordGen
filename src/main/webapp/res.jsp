<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Generated Password</title>
</head>
<body>
    <div style="text-align:center;">
        <%
        List<String> myList = (List<String>) request.getAttribute("list");

        if (myList != null && !myList.isEmpty()) {
            Iterator<String> iterator = myList.iterator();
            while (iterator.hasNext()) {
                String item = iterator.next();
        %>
                <p><%= item %></p>
        <%
            }
        } else {
        %>
            <p>No items in the list.</p>
        <%
        }
        %>
        <h1>
            Generated Password : <%= request.getAttribute("password") %><br><br>
            <%= request.getAttribute("strength") %>
        </h1>
    </div>
</body>
</html>
