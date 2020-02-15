package com.lgz.dao;

import com.lgz.pojo.Blogger;
import org.apache.ibatis.annotations.Param;

public interface LoginMapper {
    Blogger queryBloggerByuserName(@Param("userName") String userName);
}
