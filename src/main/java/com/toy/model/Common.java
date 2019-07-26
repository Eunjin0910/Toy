package com.toy.model;

import lombok.Data;

import java.util.Date;

@Data
public class Common {
    private int common_key;
    private String category_id;
    private String value_code;
    private String value;
    private Date regdate;
}
