import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.*;
public class jdbc {


    public static void main(String[] args) {
        

        String url = "jdbc:mysql://localhost:3306";
        String username = "root";
        String password = "karanss08";

        try{
            Connection connection = DriverManager.getConnection(url, username, password);
            String sql = "create database ace";   // create database
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(sql);

            System.out.println("done ");
            


        }
        catch(  SQLException E){
            System.out.println("problem");
            E.printStackTrace();

        }
    }
    
}
