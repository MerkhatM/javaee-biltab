
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.sprint_task.classes.Tasks" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="assets/bootstrap.jsp"%>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <!-- Modal для добавления Task -->
    <%@include file="addTask.jsp"%>
    <%@include file="assets/navbar.jsp"%>
    <button class="btn btn-sm mt-2 bg-navbar text-color" data-bs-toggle="modal" data-bs-target="#addTaskModal">+ Добавить задание</button>
    <div class="container col-12">
        <div class="row">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Наименование </th>
                        <th scope="col">Крайний срок</th>
                        <th scope="col">Выполнено</th>
                        <th scope="col">Детали</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList<Tasks> tasksFromServlet= (ArrayList<Tasks>) request.getAttribute("tasks");
                        if(tasksFromServlet!=null){
                            for (Tasks t: tasksFromServlet) {
                    %>
                        <tr>
                            <td><%=t.getId()%></td>
                            <td><%=t.getName()%></td>
                            <td><%=t.getDeadlineDate()%></td>
                            <td><%=t.getIsDone()%></td>
                            <td><a   class="btn bg-navbar text-color" href="/detailTask?idshka=<%=t.getId()%>" >Детали</a></td>
                        </tr>
                    <%
                             }
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>