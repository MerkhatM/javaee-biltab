package com.example.sprint_task.servlets;

import com.example.sprint_task.classes.Tasks;
import com.example.sprint_task.dbManager.DBManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "AddTaskServlet", value = "/addTask")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name= request.getParameter("nameInput");
        String detail= request.getParameter("detailInput");
        String date= String.valueOf(request.getParameter("dateInput"));
//        SimpleDateFormat format = new SimpleDateFormat();
//        format.applyPattern("dd.MM.yyyy");
//        Date docDate= format.parse(date);
        String isDone="Нет";
        DBManager.addTask(new Tasks(null,name,detail,date,isDone));
        response.sendRedirect("/home");
    }
}
