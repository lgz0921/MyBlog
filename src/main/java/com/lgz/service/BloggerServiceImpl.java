package com.lgz.service;

import com.lgz.dao.BloggerMapper;
import com.lgz.pojo.Blog;
import com.lgz.pojo.Blogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@SuppressWarnings("all")
@Service
public class BloggerServiceImpl implements BloggerService {

    @Autowired
    private BloggerMapper bloggerMapper;

    public int updateBlogger(Blogger blogger) {
        return bloggerMapper.updateBlogger(blogger);
    }

    public int updateBlogger2(Blogger blogger) {
        return bloggerMapper.updateBlogger2(blogger);
    }

    public Blogger queryBlogger() {
        return bloggerMapper.queryBlogger();
    }

}
