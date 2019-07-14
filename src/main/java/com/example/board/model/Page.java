package com.example.board.model;

import lombok.Data;

@Data
public class Page {
    private int pageNum;
    private int totCount;
    private String searchText;
    private int pageLength = 10;
}
