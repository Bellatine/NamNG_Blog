/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myapp.struts.dao.impl;

import com.myapp.struts.Util;
import com.myapp.struts.dao.UserDao;
import com.myapp.struts.dto.UserDto;
import java.sql.Connection;

/**
 *
 * @author user
 */
public class UserDaoImpl implements UserDao {

    @Override
    public UserDto getUserbyUsername(String username) {
        Connection con = Util.pool.getConnection();
        UserDto user;
        String query = "select * from users where user_account = ?";
        
    }

    @Override
    public void addUser(UserDto newUser) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
