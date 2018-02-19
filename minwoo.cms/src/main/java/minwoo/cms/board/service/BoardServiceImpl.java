package minwoo.cms.board.service;

import java.util.List;

import minwoo.cms.board.dao.BoardDao;
import minwoo.cms.board.domain.BoardVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class BoardServiceImpl implements BoardService{
   @Autowired private BoardDao boardDao;
   
   //목록얻기
   public List<BoardVo> listBoards(){
      return boardDao.getBoardLists();
   }

   // 게시판 추가
   @Transactional
   public boolean createBoard(BoardVo boardVo) {
      return boardDao.addBoard(boardVo)>0;
   }

}