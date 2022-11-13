<%-- 
    Document   : result
    Created on : Nov 13, 2022, 8:25:56 PM
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
        <title>result</title>
    </head>
    <body>
        <%String ID = request.getParameter("ID");
            String Name = request.getParameter("Name");
            String GPA = request.getParameter("GPA");%>
        <h1>ID: <%out.print(ID);%></h1>
        <h1>NAME:<%out.print(Name);%> </h1>
        <h1>GPA:<%out.print(GPA);%> </h1>
        <h1>is added </h1>
        <H2>Student List:</H2>
  <table BORDER=1 ALIGN-CENTER border=" 1px solid black">
            <%
            int id = Integer.parseInt(ID);
            double gpa = Double.parseDouble(GPA);
            Student std = new Student(id,Name,gpa);
            AddStudent.insertStudent(std);    
         List<Student> stdList = AddStudent.findAllStudent();
            %>
  <tr BGCOLOR=\"#FFADO0>
    <td>Id</td>
    <td>Name</td>
    <td>GPA</td>
  </tr>
      <%for(Student stdd : stdList) {%>
  <tr>
      <td><%out.print(stdd.getId() + "<br/>"); %></td>
    <td><%out.print(stdd.getName()+ "<br/>"); %></td>
    <td><%out.print(stdd.getGPA()+ "<br/>");%></td>
  </tr>
     <%}%>
  <table/>
    <a href="index.jsp">Back to Add Student</a>
    </body>
</html>
<!--