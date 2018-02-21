package minwoo.cms.board.service;

import java.util.List;
import minwoo.cms.board.domain.BoardVo;
 
public interface BoardService {
   List<BoardVo> listBoards(); // 게시판 목록
   boolean createBoard(BoardVo boardVo); //게시물 등록
   /* boolean updateBoard(BoardVo boardVo);
    boolean secede(int usbId);*/
    
}