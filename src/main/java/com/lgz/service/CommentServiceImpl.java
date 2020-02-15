package com.lgz.service;

import com.lgz.dao.CommentMapper;
import com.lgz.pojo.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("all")
@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentMapper commentMapper;

    public List<Comment> queryAllComment() {
        return commentMapper.queryAllComment();
    }

    public int deleteComment(int id) {
        return commentMapper.deleteComment(id);
    }

    public List<Comment> queryCommentByName(String userIp) {
        return commentMapper.queryCommentByName(userIp);
    }

    public List<Comment> queryCommentByID(int blogId) {
        return commentMapper.queryCommentByID(blogId);
    }
}
