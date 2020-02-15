package com.lgz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Link {
    private int id;
    private String linkName;
    private String linkUrl;
    private int orderNo;
}
