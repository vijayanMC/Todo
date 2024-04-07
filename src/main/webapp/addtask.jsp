<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

       <form action="addtask" method="post">
       task id <input type="text" name="taskid" required><br>
       task title <input type="text" name="tasktitle" required> <br>
       task description <input type="text" name="taskdescription"><br>
       Options<br>
       <label for="optional1">
       <input type="radio" id="optional1" value="low" name="taskpriority">low
       </label><br>
        <label for="optional2">
       <input type="radio" id="optional2" value="medium" name="taskpriority">Medium
       </label><br>
        <label for="optional3">
       <input type="radio" id="optional3" value="high" name="taskpriority">High
       </label><br>
       Due Date <input type="date" name="taskduedate"><br>
       
       <input type="submit">
       </form>

</body>
</html>