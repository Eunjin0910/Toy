package com.example.board.mapper;

import com.example.board.model.Board;
import com.example.board.model.Page;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface BoardMapper {
    List<Board> selectBoardList(Page page);
}
