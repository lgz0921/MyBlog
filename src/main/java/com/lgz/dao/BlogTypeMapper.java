package com.lgz.dao;

import com.lgz.pojo.BlogType;
import com.lgz.pojo.Link;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogTypeMapper {
    List<BlogType> queryAllBlogType();
    int addBlogType(BlogType blogType);
    int deleteBlogType(@Param("id") int id);
    int updateBlogType(BlogType blogType);
    BlogType queryBlogTypeByID(@Param("id") int id);
}
