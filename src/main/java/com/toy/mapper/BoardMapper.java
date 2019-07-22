package com.toy.mapper;

import com.toy.model.Board;
import com.toy.model.Page;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface BoardMapper {
    //게시판 목록 총 숫자
    int selectBoardListCount(Page page);
    //게시판 목록 조회
    List<Board> selectBoardList(Page page);
    //게시판 글 조회
    Board selectBoard(Board board);
    //게시판 글 등록
    int insertBoard(Board board);
    //게시판 글 수정
    int updateBoard(Board board);
    //게시판 글 삭제
    int deleteBoard(Board board);
}
