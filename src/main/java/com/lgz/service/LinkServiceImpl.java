package com.lgz.service;

import com.lgz.dao.LinkMapper;
import com.lgz.pojo.Link;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("all")
@Service
public class LinkServiceImpl implements LinkService {
    @Autowired
    private LinkMapper linkMapper;

    public List<Link> queryAllLink() {
        return linkMapper.queryAllLink();
    }

    public int addLink(Link link) {
        return linkMapper.addLink(link);
    }

    public int deleteLink(int id) {
        return linkMapper.deleteLink(id);
    }

    public int updateLink(Link link) {
        return linkMapper.updateLink(link);
    }

    public Link queryLinkByName(String linkName) {
        return linkMapper.queryLinkByName(linkName);
    }

    public Link queryLinkByID(int id) {
        return linkMapper.queryLinkByID(id);
    }
}
