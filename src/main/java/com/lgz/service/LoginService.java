package com.lgz.service;

import com.lgz.pojo.Blogger;

public interface LoginService {
    Blogger queryBloggerByuserName(String userName);
}
