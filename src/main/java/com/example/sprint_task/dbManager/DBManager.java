package com.example.sprint_task.dbManager;

import com.example.sprint_task.classes.Tasks;

import java.util.ArrayList;

public class DBManager {
    public static ArrayList<Tasks> tasks=new ArrayList<>();

    static {
        tasks.add(new Tasks(1L,"Создать Веб приложение на Java EE","23.10.2021","Да"));
        tasks.add(new Tasks(2L,"Создать Веб приложение на Java EE","23.10.2021","Да"));
        tasks.add(new Tasks(3L,"Создать Веб приложение на Java EE","23.10.2021","Да"));

    }
    public static void addTask(Tasks task){
        tasks.add(task);
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
        for (Tasks t:
             tasks) {
            if(t.getId()==id){
                tasks.remove(t);
            }
        }
    }

}

