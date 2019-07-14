package com.example.board.controller;


import com.example.board.inter.BoardServiceInterface;
import com.example.board.model.Board;
import com.example.board.model.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    private BoardServiceInterface boardServiceInterface;

    @RequestMapping(value = "/")
    public String boardMain(Model model, Board board, Page page){
        System.out.println("Controller Name : boardMain");

        List<Board> boardList = boardServiceInterface.selectBoardList(page);
        model.addAttribute("boardList",boardList);

        return "board/boardMain";
    }

}
