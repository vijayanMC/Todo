<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

     <style >
     #k{
        background-image:url("https://cdn.pixabay.com/photo/2020/06/20/16/20/orange-5321552_640.jpg" );
        border:1px solid black;
        width:100%;
        height:100vh;
    
     }
     
     #kk1{
      border:1px solid black;
      height:170px;
      width:320px;
      text-align: center;
       background-color: aqua;
       margin:auto;
       margin-top:160px;
      
     }
     </style>
</head>
<body>  
        <div id="k">
        <table id="kk1">
        <form action="userlogin" method="post">
        <tr>
           <td>
             <label for="email">email</label>
           <td> <input type="text" id="email" name="email"><br>
           </td>
        </tr>
        
        <tr>
        <td>
            <label for="password">password</label>
           <td> <input type="text" id="password" name="password"><br>
           </td>
       </tr>
       
       <tr>
       <td> <input type="submit"> </td>
        </tr>
        
        </form>	
        </table>   
        </div> 

</body>
</html>