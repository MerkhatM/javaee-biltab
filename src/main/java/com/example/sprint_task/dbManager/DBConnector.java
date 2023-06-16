package com.example.sprint_task.dbManager;

import com.example.sprint_task.classes.Tasks;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnector {
    private static Connection  connection;

    static {
        try{
            Class.forName("org.postgresql.Driver");
            connection= DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/Task(Sprint Task JDBC)",
                    "postgres",
                    "2805");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public static ArrayList<Tasks> getTasks(){
      ArrayList<Tasks> tasks=new ArrayList<>();
      try {
          PreparedStatement statement=connection.prepareStatement("select * from tasks");
          ResultSet resultSet=statement.executeQuery();
          while (resultSet.next()){
              Tasks task=new Tasks();
              task.setId(resultSet.getLong("id"));
              task.setName(resultSet.getString("name"));
              task.setDescription(resultSet.getString("description"));
              task.setDeadlineDate(resultSet.getString("deadlineDate"));
              tasks.add(task);
          }
          resultSet.close();
      }catch (Exception e){
          e.printStackTrace();
      }
      return tasks;
    }

    public static Tasks getTaskByID(Long id){
        Tasks tasks=null;
        try {
            PreparedStatement statement=connection.prepareStatement("select * from tasks where id=?");
            statement.setLong(1,id);
            ResultSet resultSet= statement.executeQuery();
            if(resultSet.next()){
                tasks.setId(resultSet.getLong("id"));
                tasks.setName(resultSet.getString("name"));
                tasks.setId(resultSet.getLong("description"));
                tasks.setDeadlineDate(resultSet.getString("deadlineDate"));
            }
            resultSet.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return tasks;
    }


}
