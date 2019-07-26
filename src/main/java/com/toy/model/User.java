package com.toy.model;

import lombok.Data;

import java.util.Date;

@Data
public class User {
    private String user_id;
    private String password;
    private String role;
    private Date regdate;
}
