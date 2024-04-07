 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

     <style>
         #k2{
           
            border:1px solid bisque;
            height:300px;
            width:320px;
            padding:20px;
            background-color:aquamarine;
            margin:auto;
            margin-top:160px;
            
         }
         
         button:hover{
         height:20px;
         width: 20px;
         background-color: black;
         color: red;
    }
         
         
     </style>

</head>
<body>
      <div id="k2"> <br>
       <form  action="saveuser" method="post" enctype="multipart/form-data">
	id:<input type="text" name="id"><br><br>
    name:<input type="text" name="name"><br><br>
	email:<input type="email" name="email"><br><br>
	contact:<input type="text" name="contact"><br><br>
	password:<input type="text" name="password"><br><br>
	image:<input type="file" name="image"><br><br>
	 
	<button>submit</button>
	</div>
	</form>
	 
	 </div>
	 
</body>
</html>