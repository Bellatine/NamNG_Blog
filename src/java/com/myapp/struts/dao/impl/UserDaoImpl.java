/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myapp.struts.dao.impl;

import com.myapp.struts.DBConfiguration.ConnectionPool;
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

    public UserDaoImpl() {
        Util.pool = ConnectionPool.getInstance();
    }

    @Override
    public UserDto getUserbyUsername(String username, String email) throws SQLException {
        Connection conn = Util.pool.getConnection();
        UserDto user = null;
        String query = "select * from users where username = ? or email = ?";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try{
            preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,email);
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
        }finally {
            Util.pool.releaseConnection(conn);
        }
        return user;
    }

    @Override
    public int addUser(UserDto newUser) throws SQLException {
        int res = -1;
        Connection conn = Util.pool.getConnection();

        String query = "insert into users(username, password, fullname, email) values(?,?,?,?)";
        PreparedStatement preparedStatement = null;
        try{
            preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1,newUser.getUsername());
            preparedStatement.setString(2, newUser.getPassword());
            preparedStatement.setString(3, newUser.getFullname());
            preparedStatement.setString(4, newUser.getEmail());
            res = preparedStatement.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }finally {
            preparedStatement.close();
            Util.pool.releaseConnection(conn);
        }
        return res;
        
        
        
    }

}
