/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts.action;

import com.myapp.struts.DBConfiguration.ConnectionPool;
import com.myapp.struts.Util;
import com.myapp.struts.dao.PostDao;
import com.myapp.struts.dao.UserDao;
import com.myapp.struts.dao.impl.PostDaoImpl;
import com.myapp.struts.dao.impl.UserDaoImpl;
import com.myapp.struts.dto.PostDto;
import com.myapp.struts.dto.UserDto;
import com.myapp.struts.form.LoginForm;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.List;

/**
 *
 * @author user
 */
public class LoginAction extends org.apache.struts.action.Action {
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        UserDao userDao = new UserDaoImpl();
        PostDao postDao = new PostDaoImpl();
        
        LoginForm formBean = (LoginForm) form;
        String user = formBean.getUsername();
        String pass = formBean.getPassword();
        
        System.out.println("input: " + user + "  " + pass);
        
        
        if ((user == null) || pass.length() < 8 || user.equals("")) {
            return mapping.findForward(FAILURE);
        }
        UserDto userDto = userDao.getUserbyUsername(user, user);

        //System.out.println("Action: " + userDto.logInfor());

        if (userDto!=null && pass.equals(userDto.getPassword())){
            Util.user = userDto;
            List<PostDto> listPost = postDao.getAllPost();
            ObjectMapper objectMapper = new ObjectMapper();
            String jsonArray = objectMapper.writeValueAsString(listPost);
            request.setAttribute("jsonArray", jsonArray);
            request.setAttribute("fullname", Util.user.getFullname());
            return mapping.findForward(SUCCESS);
        }else{
            return mapping.findForward(FAILURE);
        }

    }
}
