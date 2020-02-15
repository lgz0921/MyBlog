package com.lgz.service;

import com.lgz.dao.BlogMapper;
import com.lgz.pojo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("all")
@Service
public class BlogServiceImpl implements BlogService{

    @Autowired
    private BlogMapper blogMapper;

    public int insertBlog(Blog blog) {
        return blogMapper.insertBlog(blog);
    }

    public List<Blog> queryBlog() {
        return blogMapper.queryBlog();
    }

    public Blog queryBlogByTitle(String title) {
        return blogMapper.queryBlogByTitle(title);
    }

    public Blog queryBlogByID(int id) {
        return blogMapper.queryBlogByID(id);
    }

    public int updateBlog(Blog blog) {
        return blogMapper.updateBlog(blog);
    }

    public int deleteBlog(int id) {
        return blogMapper.deleteBlog(id);
    }
}
