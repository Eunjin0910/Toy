package com.example.board.controller;


import com.example.board.inter.BoardServiceInterface;
import com.example.board.model.Board;
import com.example.board.model.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    private BoardServiceInterface boardServiceInterface;

    //게시판 목록 조회
    @RequestMapping(value = "/board/list")
    public String selectBoardList(Model model, Page page) throws Exception{
        System.out.println("Controller Name : selectBoardList");

        //Paging 처리
        int totCount = boardServiceInterface.selectBoardListCount(page);
        page.setPageLength(10);
        page.setTotCount(totCount);
        page.makePaging();

        List<Board> boardList = boardServiceInterface.selectBoardList(page);
        model.addAttribute("boardList",boardList);
        model.addAttribute("page",page);
        return "board/boardMain";
    }

    //게시판 등록/수정 페이지 이동
    @RequestMapping(value = "/board/write/{boardid}")
    public String boardWritePage(Model model, Board board) throws Exception{
        System.out.println("Controller Name : boardWritePage");

        //수정 페이지 사용
        if (board.getBoardid() != 0) {
            Board boardResult = boardServiceInterface.selectBoard(board);
            model.addAttribute("board",boardResult);
        }
        return "board/boardWrite";
    }

    //게시판 글 조회
    @RequestMapping(value = "/board/boardDetail/{boardid}")
    public String selectBoardDetail(Model model, Board board) throws Exception{
        System.out.println("Controller Name : selectBoardDetail");
        Board boardResult = boardServiceInterface.selectBoard(board);
        model.addAttribute("board",boardResult);
        return "board/boardDetail";
    }

    //게시판 글 등록
    @ResponseBody
    @RequestMapping(value = "/board/insertBoard", method = RequestMethod.POST)
    public int insertBoard(Board board) throws Exception{
        System.out.println("Controller Name : insertBoard");
        return boardServiceInterface.insertBoard(board);
    }

    //게시판 글 수정
    @ResponseBody
    @RequestMapping(value = "/board/updateBoard", method = RequestMethod.POST)
    public int updateBoard(Board board) throws Exception{
        System.out.println("Controller Name : updateBoard");
        return boardServiceInterface.updateBoard(board);
    }

    //게시판 글 삭제
    @ResponseBody
    @RequestMapping(value = "/board/deleteBoard", method = RequestMethod.POST)
    public int deleteBoard(Board board) throws Exception{
        System.out.println("Controller Name : deleteBoard");
        return boardServiceInterface.deleteBoard(board);
    }
}
