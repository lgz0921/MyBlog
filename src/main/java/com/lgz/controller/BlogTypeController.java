package com.lgz.controller;

import com.lgz.pojo.BlogType;
import com.lgz.pojo.Link;
import com.lgz.service.BlogTypeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@SuppressWarnings("all")
@Controller
@RequestMapping("blogType")
public class BlogTypeController {

    @Autowired
    private BlogTypeServiceImpl blogTypeService;

    //查询全部
    @RequestMapping("/allBlogType")
    public String allBlogType(Model model){
        List<BlogType> list = blogTypeService.queryAllBlogType();
        model.addAttribute("list",list);
        return "allBlogType";
    }

    //跳转到增加页面
    @RequestMapping("/toAddBlogType")
    public String toAddblogType(){
        return "addBlogType";
    }
    //添加
    @RequestMapping("/addBlogType")
    public String addBlogTypee(BlogType blogType){
        blogTypeService.addBlogType(blogType);
        return "redirect:/blogType/allBlogType";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
        BlogType blogType = blogTypeService.queryBlogTypeByID(id);
        model.addAttribute("QblogType",blogType);
        return "updateBlogType";
    }
    //修改
    @RequestMapping("/updateBlogType")
    public String updateBlogType(BlogType blogType){
        System.out.println("updateBlogType=>"+blogType);
        System.out.println("================updateBlogType=>"+blogType);
        blogTypeService.updateBlogType(blogType);
        return "redirect:/blogType/allBlogType";
    }


    //删除
    @RequestMapping("/deleteBlogType/{id}")
    public String deleteBlogType(@PathVariable("id") int id){
        blogTypeService.deleteBlogType(id);
        return "redirect:/blogType/allBlogType";
    }

}
