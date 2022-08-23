/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Dell Precision 7510
 */
public class DBConnection {
    public static Connection getConnection(String dbURL, String userName, String password){
        Connection conn = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, userName, password);
        }catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }
    
}
