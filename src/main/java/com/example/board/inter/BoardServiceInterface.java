package com.example.board.inter;

import com.example.board.model.Board;
import com.example.board.model.Page;

import java.util.List;

public interface BoardServiceInterface {

    List<Board> selectBoardList(Page page);
}
