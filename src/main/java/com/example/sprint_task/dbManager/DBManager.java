package com.example.sprint_task.dbManager;

import com.example.sprint_task.classes.Tasks;

import java.util.ArrayList;

public class DBManager {
    public static ArrayList<Tasks> tasks=new ArrayList<>();

    static {
        tasks.add(new Tasks(1L,"Создать Веб приложение на Java EE","fefwopewfrf","2021-10-21","Да"));
        tasks.add(new Tasks(2L,"Изучить Реакт","dsffsdfd","2021-02-27","Нет"));
        tasks.add(new Tasks(3L,"Убраться дома","vsgfgfs","2021-08-10","Да"));

    }
    static Long idshka=4L;
    public static void addTask(Tasks task){
        task.setId(idshka);
        tasks.add(task);
        idshka++;
    }

    public static Tasks getTask(Long id){
        Tasks taskByID=null;
        for (Tasks t:
             tasks) {
            if(t.getId()==id){
                taskByID=t;
            }
        }
        return taskByID;
    }

    public static ArrayList<Tasks> getAllTasks(){
        return tasks;
    }

    public static void deleteTask(Long id){
        for (Tasks t: tasks) {
            if(t.getId()==id){
                tasks.remove(t);
                break;
            }
        }
    }

    public static void saveTask(Tasks task){
        for (Tasks t :
             tasks) {
            if(t.getId()==task.getId()){
                t.setId(task.getId());
                t.setName(task.getName());
                t.setDescription(task.getDescription());
                t.setDeadlineDate(task.getDeadlineDate());
                t.setIsDone(task.getIsDone());
                break;
            }
        }
    }

}

