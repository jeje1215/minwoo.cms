package minwoo.cms.board.dao;

import java.util.List;

import minwoo.cms.board.domain.BoardVo;
 
public interface BoardDao {
   List<BoardVo> getBoardLists(); //게시글 목록
   int addBoard(BoardVo boardVo); //게시글 등록
   BoardVo oneListBoard(int usbId); // 게시글 하나가져오기
   public BoardVo readBoard(int usbId); //게시글 상세보기
   int updateBoard(BoardVo boardVo); //게시글 수정
   int deleteBoard(int usbId); //게시글 삭제
   void updateCnt(int usbId); //게시글 조회수
}