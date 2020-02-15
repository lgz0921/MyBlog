package com.lgz.service;

import com.lgz.pojo.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentService {
    List<Comment> queryAllComment();
    int deleteComment(int id);
    List<Comment> queryCommentByName(String userIp);
    List<Comment> queryCommentByID(int blogId);
}
