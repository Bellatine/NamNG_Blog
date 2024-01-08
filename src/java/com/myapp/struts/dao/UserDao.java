/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myapp.struts.dao;

import com.myapp.struts.dto.UserDto;

/**
 *
 * @author user
 */
public interface UserDao {
    UserDto getUserbyUsername(String username);
    void addUser(UserDto newUser);
}
