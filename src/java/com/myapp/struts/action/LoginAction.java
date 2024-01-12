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
        UserDto userDto = userDao.getUserbyUsername(user);
        
        //System.out.println("Action: " + userDto.logInfor());

        if (pass.equals(userDto.getPassword())){
            Util.user = userDto;
            List<PostDto> listPost = postDao.getPostsByUser(Util.user.getId());
            for(PostDto postDto:listPost){
                System.out.println(postDto.logPosts());
            }
            System.out.println(Util.user.logInfor());
            request.setAttribute("fullname", Util.user.getFullname());
            return mapping.findForward(SUCCESS);
        }else{
            return mapping.findForward(FAILURE);
        }

    }
}
