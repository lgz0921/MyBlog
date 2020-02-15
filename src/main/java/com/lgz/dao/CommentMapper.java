package com.lgz.dao;

import com.lgz.pojo.Comment;
import com.lgz.pojo.Link;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {
    List<Comment> queryAllComment();
    int deleteComment(@Param("id") int id);
    List<Comment> queryCommentByName(@Param("userIp") String userIp);
    List<Comment> queryCommentByID(@Param("blogId") int blogId);
}
