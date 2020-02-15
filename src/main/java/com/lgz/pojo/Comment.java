package com.lgz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comment {
    private int id;
    private String userIp;
    private int blogId;
    private String content;
    private Date commentDate;
    private int state;
}
