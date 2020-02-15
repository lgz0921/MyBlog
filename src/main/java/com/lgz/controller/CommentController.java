package com.lgz.controller;

import com.lgz.pojo.Comment;
import com.lgz.pojo.Link;
import com.lgz.service.CommentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("all")
@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentServiceImpl commentService;

    //查询全部
    @RequestMapping("/allComment")
    public String allComment(Model model){
        List<Comment> list = commentService.queryAllComment();
        model.addAttribute("list",list);
        return "allComment";
    }

    //删除
    @RequestMapping("/deleteComment/{id}")
    public String deleteComment(@PathVariable("id") int id){
        commentService.deleteComment(id);
        return "redirect:/comment/allComment";
    }
}
