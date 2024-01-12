package com.myapp.struts.dao.impl;

import com.myapp.struts.Util;
import com.myapp.struts.dao.PostDao;
import com.myapp.struts.dto.PostDto;
import com.myapp.struts.dto.UserDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PostDaoImpl implements PostDao {
    @Override
    public List<PostDto> getPostsByUser(int userId) {
        List<PostDto> listPost = new ArrayList<>();
        Connection conn = Util.pool.getConnection();
        String query = "select * from posts where user_id = ?";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try{
            preparedStatement = conn.prepareStatement(query);
            preparedStatement.setInt(1, userId);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                PostDto post = new PostDto(resultSet.getInt("id"), resultSet.getInt("user_id"), resultSet.getString("post_content"),
                        resultSet.getDate("timecreate"),resultSet.getString("image"));
                listPost.add(post);
                //System.out.println(user.logInfor());
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            Util.pool.releaseConnection(conn);
        }
        return listPost;
    }

    @Override
    public int insertPost(PostDto postDto) {
        return 0;
    }
}
