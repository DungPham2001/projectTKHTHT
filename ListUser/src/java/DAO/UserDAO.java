/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell Precision 7510
 */
public class UserDAO {
    private String dbURL = "jdbc:mysql://localhost:3306/listuser";
    private String user_name = "root";
    private String password = "263102072001";
    public Connection connection = DBConnection.getConnection(dbURL, user_name, password);
    public List<User>getAll(){
        List<User>list = new ArrayList<>();
        String sql = "select * from user";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet re = st.executeQuery();
            while( re.next() ){
                User u = new User();
                u.setFirstName(re.getNString("firstName"));
                u.setLastName(re.getNString("lastName"));
                u.setCountry(re.getNString("country"));
                u.setEmail(re.getNString("email"));
                u.setPassword(re.getNString("password"));
                list.add(u);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    public void insert(User u){
        String sql = "insert into user(firstName,lastName,country,email,password) values(?,?,?,?,?)";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setNString(1, u.getFirstName());
            st.setNString(2, u.getLastName());
            st.setNString(3, u.getCountry());
            st.setNString(4, u.getEmail());
            st.setNString(5, u.getPassword());
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    public boolean checkAccount(String email, String password){
        String sql = "select * from user where email = ? and password = ?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setNString(1, email);
            st.setNString(2, password);
            ResultSet re = st.executeQuery();
            while( re.next() ){
                return true;
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return false;
    }
    
    
}
