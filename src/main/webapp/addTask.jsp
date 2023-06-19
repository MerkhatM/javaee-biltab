
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="modal fade" id="addTaskModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="addTask" method="post">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Новое задание </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="nameInput" class="form-label">Наименование:</label>
                        <input type="text" class="form-control" name="nameInput" id="nameInput"  placeholder="Наименование...">
                    </div>
                    <div class="mb-3">
                        <label for="detailInput" class="form-label">Описание:</label>
                        <textarea placeholder="Описание" class="form-control" name="detailInput" id="detailInput"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="dateInput" class="form-label">Крайний срок: </label>
                        <input type="date" class="form-control" id="dateInput" name="dateInput"  placeholder="mm/dd/yyyy">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                    <button type="submit" class="btn btn-primary">Добавить</button>
                </div>
            </form >
        </div>
    </div>
</div>