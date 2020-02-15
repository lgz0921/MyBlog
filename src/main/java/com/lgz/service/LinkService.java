package com.lgz.service;

import com.lgz.pojo.Link;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LinkService {
    List<Link> queryAllLink();
    int addLink(Link link);
    int deleteLink(@Param("id") int id);
    int updateLink(Link link);
    Link queryLinkByName(String linkName);
    Link queryLinkByID(int id);
}
