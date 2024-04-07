<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dto.Task" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <%Task task=(Task)request.getAttribute("task");%>
       
       <form action="updatetask" method="post">
       task id <input type="text" name="taskid" hidden=""value="<%= task.getTaskid() %>" ><br> 
       task title <input type="text" name="tasktitle" value=" <%= task.getTasktitle() %> "> <br>
       task description <input type="text" name="taskdescription" value=" <%=task.getTaskdescription()%>"><br>
       Current task priority :<h4><%= task.getTaskpriority() %></h4>
       Task priority:<br>
       <label for="optional1">
       <input type="radio" id="optional1" value="low" name="taskpriority">low
       </label><br>
        <label for="optional2">
       <input type="radio" id="optional2" value="medium" name="taskpriority">Medium
       </label><br>
        <label for="optional3">
       <input type="radio" id="optional3" value="high" name="taskpriority">High
       </label><br>
       Due Date <input type="date" name="taskduedate" value=" <%=task.getTaskduedate() %> "><br>
       Status   <input type="text" name="taskstatus" value="><%= task.getTaskstatus() %> "><br>
       
       <input type="submit">
       </form>

</body>
</html>