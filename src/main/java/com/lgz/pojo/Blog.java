package com.lgz.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Blog {
    private int id;
    private String title;
    private String summary;
    private Date releaseDate;
    private int clickHit;
    private int replyHit;
    private String content;
    private int typeId;
    private String keyWord;
}
