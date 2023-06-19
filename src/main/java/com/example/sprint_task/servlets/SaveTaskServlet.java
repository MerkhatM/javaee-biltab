package com.example.sprint_task.servlets;

import com.example.sprint_task.classes.Tasks;
import com.example.sprint_task.dbManager.DBManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SaveTaskServlet", value = "/saveTask")
public class SaveTaskServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("id"));
        String name=request.getParameter("nameInput");
        String description=request.getParameter("descriptionInput");
        String deadline=request.getParameter("dateInput");
        String select=request.getParameter("selectInput");

        DBManager.saveTask(new Tasks(id,name,description,deadline,select));
        response.sendRedirect("/home");
    }
}
