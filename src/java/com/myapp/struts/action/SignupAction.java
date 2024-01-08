/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myapp.struts.action;

import com.myapp.struts.DBConfiguration.ConnectionPool;
import com.myapp.struts.Util;
import com.myapp.struts.dao.UserDao;
import com.myapp.struts.dao.impl.UserDaoImpl;
import com.myapp.struts.dto.UserDto;
import com.myapp.struts.form.SignupForm;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author user
 */
public class SignupAction extends org.apache.struts.action.Action {
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Util.pool = ConnectionPool.getInstance();

        UserDao userDao = new UserDaoImpl();
        
        SignupForm formBean = (SignupForm) form;
        String name = formBean.getFirstname();
        String email = formBean.getEmail();
        String user = formBean.getUsername();
        String pass = formBean.getPassword();
        
        UserDto userDto = new UserDto(user, pass, name, email);
        
        //System.out.println("input: " + user + "  " + pass);
        
        
        if ((user == null) || pass.length() < 8 || user.equals("") || (name == null) || (name.equals(""))) {
            return mapping.findForward(FAILURE);
        }
         
        
        //System.out.println("Action: " + userDto.logInfor());

        if (userDao.addUser(userDto) != -1){
            return mapping.findForward(SUCCESS);
        }else{
            return mapping.findForward(FAILURE);
        }

    }
}
