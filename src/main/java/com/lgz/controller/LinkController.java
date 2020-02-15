package com.lgz.controller;

import com.lgz.pojo.Blog;
import com.lgz.pojo.Link;
import com.lgz.service.LinkServiceImpl;
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
@RequestMapping("/link")
public class LinkController {

    @Autowired
    private LinkServiceImpl linkService;

    //查询全部
    @RequestMapping("/allLink")
    public String allLink(Model model){
        List<Link> list = linkService.queryAllLink();
        model.addAttribute("list",list);
        return "allLink";
    }

    //跳转到增加页面
    @RequestMapping("/toAddLink")
    public String toAddBlog(){
        return "addLink";
    }
    //添加
    @RequestMapping("/addLink")
    public String addLink(Link link){
        linkService.addLink(link);
        return "redirect:/link/allLink";
    }

    //搜索
    @RequestMapping("/queryLink")
    public String queryLink(String linkName, Model model){
        Link link = linkService.queryLinkByName(linkName);
        List<Link> list = new ArrayList<Link>();
        list.add(link);
        if(link==null){
            list=linkService.queryAllLink();
            model.addAttribute("error","未查询到结果");
        }
        model.addAttribute("list",list);
        return "allLink";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
        Link link = linkService.queryLinkByID(id);
        model.addAttribute("Qlink",link);
        return "updateLink";
    }
    //修改
    @RequestMapping("/updateLink")
    public String updateLink(Link link){
        System.out.println("updateLink=>"+link);
        System.out.println("================updateLink=>"+link);
        linkService.updateLink(link);
        return "redirect:/link/allLink";
    }

    //删除博客
    @RequestMapping("/deleteLink/{id}")
    public String deleteBlog(@PathVariable("id") int id){
        linkService.deleteLink(id);
        return "redirect:/link/allLink";
    }

}
