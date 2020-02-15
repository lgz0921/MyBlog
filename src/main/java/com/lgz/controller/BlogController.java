package com.lgz.controller;

import com.lgz.pojo.Blog;
import com.lgz.service.BlogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@SuppressWarnings("all")
@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogServiceImpl blogService;

    //文章管理
    @RequestMapping("/allBlog")
    public String allBlog(Model model){
        List<Blog> list = blogService.queryBlog();
        //  System.out.println(blogs.size());
        model.addAttribute("list",list);
        return "allBlog";
    }

    //跳转到增加博客页面
    @RequestMapping("/toAddBlog")
    public String toAddBlog(){
        return "addBlog";
    }

    //添加博客的请求
    @RequestMapping("/addBlog")
    public String addBook(Blog blog){
        blog.setClickHit(0);
        blog.setReplyHit(0);
        blog.setReleaseDate(new Date());
        blogService.insertBlog(blog);
        return "redirect:/blog/allBlog";
    }
    //查询博客
    @RequestMapping("/queryBlog")
    public String queryBlog(String title, Model model){
        Blog blog = blogService.queryBlogByTitle(title);
        List<Blog> list = new ArrayList<Blog>();
        list.add(blog);
        if(blog==null){
            list=blogService.queryBlog();
            model.addAttribute("error","未查询到结果");
        }
        model.addAttribute("list",list);
        return "allBlog";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
        Blog blog = blogService.queryBlogByID(id);
        model.addAttribute("Qblog",blog);
        return "updateBlog";
    }
    //修改博客
    @RequestMapping("/updateBlog")
    public String updateBlog(Blog blog){
        System.out.println("updateBlog=>"+blog);
        blog.setReleaseDate(new Date());
        System.out.println("================updateBlog=>"+blog);
        blogService.updateBlog(blog);
        return "redirect:/blog/allBlog";
    }

    //删除博客
    @RequestMapping("/deleteBlog/{id}")
    public String deleteBlog(@PathVariable("id") int id){
        blogService.deleteBlog(id);
        return "redirect:/blog/allBlog";
    }

}
