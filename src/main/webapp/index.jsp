<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.sprint_task.classes.Tasks" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
    <style>
        .bg-navbar{
            background-color: #062167;
        }
        .text-color{
            color: aliceblue;
        }
    </style>
    <nav class="navbar navbar-expand-lg bg-navbar mb-3">
        <div class="container-fluid">
            <a class="navbar-brand fw=bold text-color fs=1" href="#">TASK MANAGER</a>

            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active text-color" aria-current="page" href="#" style="color: white">Все задания</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <button class="btn btn-sm mt-2 bg-navbar text-color">+ Добавить задание</button>
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
                            <td><%=t.getDescription()%></td>
                            <td><%=t.getDeadlineDate()%></td>
                            <td><button  type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Детали</button></td>
                        </tr>
                    <%
                        }
                        }
                    %>
                </tbody>
            </table>
        </div>

    </div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                    <button type="submit" class="btn btn-primary">Добавить</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>