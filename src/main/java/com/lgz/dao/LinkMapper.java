package com.lgz.dao;

import com.lgz.pojo.Blog;
import com.lgz.pojo.Link;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LinkMapper {
    List<Link> queryAllLink();
    int addLink(Link link);
    int deleteLink(@Param("id") int id);
    int updateLink(Link link);
    Link queryLinkByName(@Param("linkName") String linkName);
    Link queryLinkByID(@Param("id") int id);
}
