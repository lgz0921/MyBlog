package com.lgz.service;

import com.lgz.pojo.Blog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogService {
    int insertBlog(Blog blog);
    List<Blog> queryBlog();
    Blog queryBlogByTitle(String title);
    Blog queryBlogByID(int id);
    int updateBlog(Blog blog);
    int deleteBlog(int id);
}
