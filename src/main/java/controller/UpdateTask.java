package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.User;
import dto.Task;

@WebServlet("/updatetask")
public class UpdateTask extends HttpServlet{
          @Override
        protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        	
        	 int taskid=Integer.parseInt(req.getParameter("taskid"));
     		 String tasktitle=req.getParameter("tasktitle");
     		 String taskdescription=req.getParameter("taskdescription");
     		 String taskpriority=req.getParameter("taskpriority");
     		 String taskduedate=req.getParameter("taskduedate");
     		 String taskstatus=req.getParameter("taskstatus");
     		
     		 HttpSession session =req.getSession();
     		 User user=(User)session.getAttribute("user");
     		 
     		 Task task =new Task(taskid, taskstatus, taskstatus, taskstatus, taskstatus, taskstatus, user.getUserid());
     		 
     		 System.out.println("......"+task+"......");
     		 
			
        }
}
