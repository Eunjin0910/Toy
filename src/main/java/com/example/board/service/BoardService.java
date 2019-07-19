package com.example.board.service;

import com.example.board.inter.BoardServiceInterface;
import com.example.board.mapper.BoardMapper;
import com.example.board.model.Board;
import com.example.board.model.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BoardService implements BoardServiceInterface {

    @Autowired(required = false)
    private BoardMapper boardMapper;
    //게시판 목록 총 숫자
    @Override
    public int selectBoardListCount(Page page) {return boardMapper.selectBoardListCount(page);}
    //게시판 목록 조회
    @Override
    public List<Board> selectBoardList(Page page){
        return boardMapper.selectBoardList(page);
    }
    //게시판 글 조회
    @Override
    public Board selectBoard(Board board) {return boardMapper.selectBoard(board);}
    //게시판 글 등록
    @Override
    public int insertBoard(Board board) { return boardMapper.insertBoard(board);}
    //게시판 글 수정
    @Override
    public int updateBoard(Board board) {return boardMapper.updateBoard(board);}
    //게시판 글 삭제
    @Override
    public int deleteBoard(Board board) {return boardMapper.deleteBoard(board);}

}
