/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myapp.struts.dao;

import com.myapp.struts.dto.UserDto;

import java.sql.SQLException;

/**
 *
 * @author user
 */
public interface UserDao {
    public UserDto getUserbyUsername(String username) throws SQLException;

    public int addUser(UserDto newUser) throws SQLException;
    
}
