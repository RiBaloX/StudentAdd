<%-- 
    Document   : Error
    Created on : Nov 13, 2022, 4:36:53 PM
    Author     : kant2
--%>
<%@page import="Student.Student"%>
<%@page import="Student.AddStudent"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <h1>There is an existing student with this ID</h1>
        <H2>Student List:</H2>
  <table BORDER=1 ALIGN-CENTER border=" 1px solid black">
            <%
         List<Student> stdList = AddStudent.findAllStudent();
            %>
  <tr BGCOLOR=\"#FFADO0>
    <td>Id</td>
    <td>Name</td>
    <td>GPA</td>
  </tr>
      <%for(Student std : stdList) {%>
  <tr>
      <td><%out.print(std.getId() + "<br/>"); %></td>
    <td><%out.print(std.getName()+ "<br/>"); %></td>
    <td><%out.print(std.getGPA()+ "<br/>");%></td>
  </tr>
     <%}%>
  <table/>
    <a href="index.jsp">Back to Add Student</a>
    </body>
</html>
