package com.lgz.dao;

import com.lgz.pojo.Blog;
import com.lgz.pojo.Blogger;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BloggerMapper {
    int updateBlogger(Blogger blogger);
    int updateBlogger2(Blogger blogger);
    Blogger queryBlogger();

}
