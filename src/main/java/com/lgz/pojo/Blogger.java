package com.lgz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Blogger {
    private int id;
    private String userName;
    private String password;
    private String profile;
    private String nickName;
    private String sign;
    private String imageName;
}
