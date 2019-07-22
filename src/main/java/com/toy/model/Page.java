package com.toy.model;

import lombok.Data;

@Data
public class Page {
    private int pageLength;        //게시글 수
    private int pageNum;                //페이지 Num
    private int totCount;               //게시글 전체 수
    private String searchText;          //검색어
    private int firstPageNum;           //첫번째 페이지 Num
    private int finalPageNum;           //마지막 페이지 Num
    private int startPageNum;           //첫 페이지 Num
    private int endPageNum;             //끝 페이지 Num
    private int queryPageNum;           //쿼리용 페이지 Num

    public void makePaging() {
        if(this.totCount == 0) return;
        if(this.pageNum == 0) this.setPageNum(1);
        if(this.pageNum >= 2) this.queryPageNum = (this.getPageNum() - 1) * 10;
        if(this.pageLength == 0) this.setPageLength(10);
        int finalPage = (totCount + (pageLength - 1)) / pageLength;
        if(this.pageNum > finalPage) this.setPageLength(finalPage);
        if(this.pageNum < 0 || this.pageNum > finalPage) this.pageNum = 1;
        int startPage = ((pageNum - 1) / 10) * 10 + 1;
        int endPage = startPage + 10 - 1;
        if(endPage > finalPage) endPage = finalPage;
        this.setFirstPageNum(1);
        this.setStartPageNum(startPage);
        this.setEndPageNum(endPage);
        this.setFinalPageNum(finalPage);
    }
}
