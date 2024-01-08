/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myapp.struts.dao.impl;

import com.myapp.struts.Util;
import com.myapp.struts.dao.UserDao;
import com.myapp.struts.dto.UserDto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class UserDaoImpl implements UserDao {

    @Override
    public UserDto getUserbyUsername(String username) {
        Connection conn = Util.pool.getConnection();
        UserDto user = null;
        String query = "select * from users where username = ?";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try{
            preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1,username);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                user = new UserDto(resultSet.getInt("id"),resultSet.getString("username"),
                        resultSet.getString("password"), resultSet.getString("fullname"),
                        resultSet.getString("email"),resultSet.getInt("status"),resultSet.getTime("timecreate"));
                //System.out.println(user.logInfor());
                break;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public int addUser(UserDto newUser) {
        Connection conn = Util.pool.getConnection();
        String query = "insert into users(username, password, fullname, email) values(?,?,?,?)";
        PreparedStatement preparedStatement = null;
        try{
            return preparedStatement.executeUpdate(query);
        }catch(SQLException e){
            return -1;
        }
        
        
        
    }
    
}
