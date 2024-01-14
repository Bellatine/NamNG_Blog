package com.myapp.struts.dto;

import java.util.Date;

public class PostDto {
    private int id;
    private int user_id;
    private String post_content;
    private Date timecreate;
    private String image;

    private String name;

    public PostDto(int id, int user_id, String post_content, Date timecreate, String image) {
        this.id = id;
        this.user_id = user_id;
        this.post_content = post_content;
        this.timecreate = timecreate;
        this.image = image;
    }

    public PostDto(int user_id, String post_content, String image) {
        this.user_id = user_id;
        this.post_content = post_content;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getPost_content() {
        return post_content;
    }

    public void setPost_content(String post_content) {
        this.post_content = post_content;
    }

    public Date getTimecreate() {
        return timecreate;
    }

    public void setTimecreate(Date timecreate) {
        this.timecreate = timecreate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String logPosts(){
        String pad = " - ";
        return id + pad + user_id + pad + post_content + pad + image;
    }
}
