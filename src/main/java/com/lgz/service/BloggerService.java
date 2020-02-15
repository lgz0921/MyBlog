package com.lgz.service;

import com.lgz.pojo.Blog;
import com.lgz.pojo.Blogger;

import java.util.List;

public interface BloggerService {
    int updateBlogger(Blogger blogger);
    int updateBlogger2(Blogger blogger);
    Blogger queryBlogger();

}
