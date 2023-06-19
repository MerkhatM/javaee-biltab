package com.example.sprint_task.servlets;

import com.example.sprint_task.dbManager.DBManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DeleteServlet", value = "/deleteTask")
public class DeleteServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("id"));
        DBManager.deleteTask(id);
        response.sendRedirect("/home");
    }
}
