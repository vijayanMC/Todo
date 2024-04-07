<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dto.User" %>
    <%@page import="dto.Task" %>
    <%@page import="java.util.*" %>
    <%@page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

       <style>
       #kk{
            border:1px solid black;
            height:30px;
            width:40px;    
            text-align: center;
            border-collapse: collapse;   
       }
       th{ background-color: aqua;
       }
       td{ background-color: yellow;
       }
       td,th{
       border:1px solid black;
       border-collapse: collapse;
       padding:20px;
      
       }
       
       
       
       </style>
</head>
<body>
       <%User user=(User)request.getSession().getAttribute("user");%>
       <%String username=user.getUsername(); %>
       
       <h1 >Welcome to Home Page</h1><br>
       <h2>Welcome <%= username %></h2>
       <h4>email<%= user.getUseremail() %></h4>  
       
       <%String image= new String(Base64.getEncoder().encode(user.getUserimage())); %>
       <img alt="" src="data:image/jpeg;base64,<%= image %>" width="180" height="100"  >  <br>
       
       <a href="addtask.jsp">AddTask</a><br>
       
       <h3>Task</h3><br>
       
       <% List<Task> tasks=(List)request.getAttribute("tasks"); %>
       
       <table id="kk">
       <tr>
       <th>id</th>
       <th>title</th>
       <th>description</th>
       <th>priority</th>
       <th>due date</th>
       <th>status</th>
       <th>Delete</th>
       <th>Edit</th>
       </tr>
       
       <% for(Task task:tasks) {%>
          <tr>
          <td><%= task.getTaskid() %></td>
          <td><%= task.getTasktitle() %></td>
          <td><%= task.getTaskdescription() %></td>
          <td><%= task.getTaskpriority() %></td>
          <td><%= task.getTaskduedate() %></td>
          <td><%= task.getTaskstatus() %></td>
          <td><a href="delete?taskid=<%= task.getTaskid()%>">Delete</a></td>
          <td><a href="edit?taskid=<%= task.getTaskid() %>>">Edit</a></td>
          
          </tr>
          <% } %>
       </table>
       
</body>
</html>