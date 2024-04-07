<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

     <style >
     body{
        background-image:url("https://media.istockphoto.com/id/1418476287/photo/businessman-analyzing-companys-financial-balance-sheet-working-with-digital-augmented-reality.jpg?s=2048x2048&w=is&k=20&c=6TnFp1GpVfRd7ZLIl-GJAO0IAkrcBPT4xvcrvr8QcRc=" );
        
        width:100%;
        height:50vh;
        background-attachment: fixed;
     }
     
     #kk1{
      border:1px solid black;
      height:170px;
      width:320px;
      text-align: center;
       
       margin:auto;
       margin-top:160px;
      
     }
     </style>
</head>
<body>  
        
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
        

</body>
</html>