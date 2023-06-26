<%@ page import="com.example.sprint_task.classes.Tasks" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Details</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <%@include file="assets/bootstrap.jsp"%>
</head>
<body>
<%@include file="assets/navbar.jsp"%>
<%
    Tasks task= (Tasks) request.getAttribute("zadachka");
    if(task!=null){
%>
<div class="container col-8 mx-auto">
    <form action="saveTask" method="post">
        <div class="task-body">
            <div class="mb-3">
                <input type="hidden" name="id" value="<%=task.getId()%>">
                <label for="nameInput" class="form-label">Наименование:</label>
                <input type="text" class="form-control" name="nameInput" id="nameInput"  placeholder="<%=task.getName()%>">
            </div>
            <div class="mb-3">
                <label for="descriptionInput" class="form-label">Описание:</label>
                <textarea placeholder="<%=task.getDescription()%>" class="form-control" name="descriptionInput" id="descriptionInput"></textarea>
            </div>
            <div class="mb-3">
                <label for="dateInput" class="form-label">Крайний срок: </label>
                <input type="date" class="form-control" id="dateInput" name="dateInput"  value="<%=task.getDeadlineDate()%>">
            </div>
            <div class="mb-3">
                <label for="selectInput" class="form-label">Выполнено: </label>
                <select name="selectInput" id="selectInput" class="form-control" >
                    <option value="Да" <%=task.getIsDone().equals("Да") ? "selected" : ""%>>Да</option>
                    <option value="Нет" <%=task.getIsDone().equals("Нет") ? "selected" : ""%> >Нет</option>
                </select>
            </div>
        </div>
        <div class="modal-footer d-flex justify-content-start">
            <button type="submit" class="btn btn-success">Сохранить </button>
            <button type="button" class="btn btn-danger " data-bs-toggle="modal"  data-bs-target="#deleteModal">Удалить</button>
        </div>
    </form >
    <%
        }
    %>

    <!-- Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1"
         aria-labelledby="deleteModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="deleteTask" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteModalLabel">
                            Info
                        </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" name="id" value="<%=task.getId()%>">
                        <h2>ARE YOU SURE?</h2>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                        </button>
                        <button type="submit" class="btn btn-danger">DELETE</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
</body>
</html>
