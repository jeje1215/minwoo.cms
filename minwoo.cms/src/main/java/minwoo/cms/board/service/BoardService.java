package minwoo.cms.board.service;

import java.util.List;
import minwoo.cms.board.domain.BoardVo;
 
public interface BoardService {
   List<BoardVo> listBoards(); // 게시판 목록
   BoardVo onelistboard(int usbId);//게시판 하나 가져오기
   boolean createBoard(BoardVo boardVo); //게시물 등록
   public BoardVo readContent(int usbId); //게시물 상세보기
   boolean fixBoard(BoardVo boardVo); //게시물 수정
   int secede(int usbId); //게시물 삭제
   void plusCnt(int usbId);
}