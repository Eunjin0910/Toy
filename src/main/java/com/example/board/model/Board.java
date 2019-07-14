package com.example.board.model;

import lombok.Data;

import java.util.Date;

@Data
public class Board {
    private int boardid;
    private String title;
    private String content;
    private Date regdate;
    private int no;
}
