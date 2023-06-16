package com.example.sprint_task.servlets;

import com.example.sprint_task.classes.Tasks;
import com.example.sprint_task.dbManager.DBManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.swing.text.TabSet;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("salem");
        ArrayList<Tasks> tasks= DBManager.getAllTasks();
        System.out.println(tasks.size());
        request.setAttribute("tasks",tasks);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

}
