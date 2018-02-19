package minwoo.cms.board.dao;

import java.util.List;

import minwoo.cms.board.dao.mapper.BoardMapper;
import minwoo.cms.board.domain.BoardVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDaoImpl implements BoardDao {
   @Autowired private BoardMapper boardMapper;

   // 게시판 목록
   public List<BoardVo> getBoardLists(){
      return boardMapper.getBoardLists();
   }
   
   // 게시판 등록
   public int addBoard(BoardVo boardVo) {
      return boardMapper.addBoard(boardVo);
   }

}