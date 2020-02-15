package com.lgz.controller;

import com.lgz.pojo.Blog;
import com.lgz.pojo.Blogger;
import com.lgz.service.BloggerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@SuppressWarnings("all")
@Controller
@RequestMapping("/blogger")
public class BloggerController {

    @Autowired
    private BloggerServiceImpl bloggerService;

    @RequestMapping("/tologin")
    public String gologin(){
        return "login";
    }

    //修改Username,pwd
    @RequestMapping("/updateUP")
    public String updateUP(int id, Model model){
        Blogger blogger = bloggerService.queryBlogger();
        model.addAttribute("Admin",blogger);
        System.out.println("===========================================");
        return "updateAdmin";
    }

    @RequestMapping("/updateOk")
    public String updateOk(Blogger blogger){
        bloggerService.updateBlogger(blogger);
        return "redirect:/blogger/tologin";
    }


    //修改个人信息
    @RequestMapping("/updateBlogger")
    public String updateBlogger(Blogger blogger){
        bloggerService.updateBlogger2(blogger);
        return "redirect:/blogger/queryBlogger";
    }

    @RequestMapping("/queryBlogger")
    public String queryBlogger(Model model){
        Blogger blogger = bloggerService.queryBlogger();
        model.addAttribute("Admin",blogger);
        return "personCenter";
    }
}
