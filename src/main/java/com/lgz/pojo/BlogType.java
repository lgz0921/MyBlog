package com.lgz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BlogType {
    private int id;
    private String typeName;
    private int orderNo;
}
