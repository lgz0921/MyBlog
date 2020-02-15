package com.lgz.service;

import com.lgz.dao.LoginMapper;
import com.lgz.pojo.Blogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@SuppressWarnings("all")
@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    private LoginMapper loginMapper;
    public Blogger queryBloggerByuserName(String userName) {
        return loginMapper.queryBloggerByuserName(userName);
    }
}
