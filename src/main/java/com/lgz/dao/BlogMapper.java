package com.lgz.dao;

import com.lgz.pojo.Blog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogMapper {
    List<Blog> queryBlog();
    Blog queryBlogByTitle(@Param("title") String title);
    Blog queryBlogByID(@Param("id") int id);
    int insertBlog(Blog blog);
    int updateBlog(Blog blog);
    int deleteBlog(@Param("id") int id);
}
