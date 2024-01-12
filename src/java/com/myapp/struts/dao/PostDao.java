package com.myapp.struts.dao;

import com.myapp.struts.dto.PostDto;
import java.util.List;
public interface PostDao {
    List<PostDto> getPostsByUser(int userId);
    int insertPost(PostDto postDto);

}
