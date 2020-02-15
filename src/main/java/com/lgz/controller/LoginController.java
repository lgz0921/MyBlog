package com.lgz.controller;

import com.lgz.pojo.Blogger;
import com.lgz.service.BloggerServiceImpl;
import com.lgz.service.LoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@SuppressWarnings("all")
@RestController
public class LoginController {

    @Autowired
    private LoginServiceImpl loginService;

    @Autowired
    private BloggerServiceImpl bloggerService;

    @RequestMapping("/a1")
    public String a1(String name,String pwd){
        String msg = "";
       // System.out.println(name+" &&& "+pwd);
        if(name.equals("admin")){
         //   System.out.println(name+" *** "+pwd);
            Blogger blogger = loginService.queryBloggerByuserName(name);
         //   System.out.println(blogger.getPassword()+" $$$$ "+pwd);
            if(blogger.getPassword().equals(pwd)){
                return "ok";
            }
            else msg="密码错误";
        }
        else msg="用户名应为admin";
        return msg;
    }


    @RequestMapping("/a2")
    public ModelAndView login(Model model, HttpSession session){
        Blogger blogger = bloggerService.queryBlogger();
        model.addAttribute("Admin",blogger);
        ModelAndView mv = new ModelAndView("admin");
       // System.out.println(bloggerService);
        //告诉拦截器我在呢
        session.setAttribute("bloggerLoginInfo",blogger);
        return mv;
    }

}
