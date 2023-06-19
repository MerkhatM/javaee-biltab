package com.example.sprint_task.servlets;

import com.example.sprint_task.classes.Tasks;
import com.example.sprint_task.dbManager.DBManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DetailTaskServlet", value = "/detailTask")
public class DetailTaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("idshka"));
        Tasks task=DBManager.getTask(id);
        request.setAttribute("zadachka",task);
        request.getRequestDispatcher("detailTask.jsp").forward(request,response);
    }


}
