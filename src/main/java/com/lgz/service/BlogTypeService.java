package com.lgz.service;

import com.lgz.pojo.BlogType;
import com.lgz.pojo.Link;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogTypeService {
    List<BlogType> queryAllBlogType();
    int addBlogType(BlogType blogType);
    int deleteBlogType(int id);
    int updateBlogType(BlogType blogType);
    BlogType queryBlogTypeByID(int id);
}
