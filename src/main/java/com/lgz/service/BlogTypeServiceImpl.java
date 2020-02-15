package com.lgz.service;

import com.lgz.dao.BlogTypeMapper;
import com.lgz.pojo.BlogType;
import com.lgz.pojo.Blogger;
import com.lgz.pojo.Link;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("all")
@Service
public class BlogTypeServiceImpl implements BlogTypeService{

    @Autowired
    private BlogTypeMapper blogTypeMapper;


    public List<BlogType> queryAllBlogType() {
        return blogTypeMapper.queryAllBlogType();
    }

    public int addBlogType(BlogType blogType) {
        return blogTypeMapper.addBlogType(blogType);
    }

    public int deleteBlogType(int id) {
        return blogTypeMapper.deleteBlogType(id);
    }

    public int updateBlogType(BlogType blogType) {
        return blogTypeMapper.updateBlogType(blogType);
    }

    public BlogType queryBlogTypeByID(int id) {
        return blogTypeMapper.queryBlogTypeByID(id);
    }
}
