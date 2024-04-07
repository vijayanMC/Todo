package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Task;

public class UpdateTask extends HttpServlet{
          @Override
        protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        	 int taskid=Integer.parseInt(req.getParameter("taskid"));
     		 String tasktitle=req.getParameter("tasktitle");
     		 String taskdescription=req.getParameter("taskdescription");
     		 String taskpriority=req.getParameter("taskpriority");
     		 String taskduedate=req.getParameter("taskduedate");
     		 
     		Dao dao=new Dao();
     		
     		Task task=new Task();
			try {
				int res=dao.UpdateTask(task);
				req.setAttribute("task",task );
				RequestDispatcher dispatcher=req.getRequestDispatcher("edittask.jsp");
				dispatcher.include(req, resp);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
}
