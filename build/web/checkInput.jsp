<%-- 
    Document   : addStudent
    Created on : Nov 13, 2022, 8:46:08 PM
    Author     : kant2
--%>

<%@page import="Student.AddStudent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>checkInput</title>
    </head>
    <body>

        <% if((AddStudent.findStudentById(Integer.parseInt(request.getParameter("ID"))) == null) && 
                (AddStudent.findStudentByName(request.getParameter("Name")) == null)) {
        %>
        <jsp:include page = "result.jsp"/>

        <%
        }
        else {
        %>
        <jsp:include page = "Error.jsp"/>
        <% } %>
    </body>
</html>
