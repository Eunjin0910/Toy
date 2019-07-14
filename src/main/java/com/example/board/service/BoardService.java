package com.example.board.service;

import com.example.board.inter.BoardServiceInterface;
import com.example.board.mapper.BoardMapper;
import com.example.board.model.Board;
import com.example.board.model.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("boardService")
public class BoardService implements BoardServiceInterface {

    @Autowired(required = false)
    private BoardMapper boardMapper;

    @Override
    public List<Board> selectBoardList(Page page){
        return boardMapper.selectBoardList(page);
    }
}
