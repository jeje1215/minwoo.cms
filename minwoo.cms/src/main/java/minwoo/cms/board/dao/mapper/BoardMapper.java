package minwoo.cms.board.dao.mapper;

import java.util.List;
import minwoo.cms.board.domain.BoardVo;
 
public interface BoardMapper {
   List<BoardVo> getBoardLists(); //게시글 목록
   int addBoard(BoardVo boardVo); //게시글 등록
   /*
    int updateBoard(BoardVo boardVo);//게시글 수정
    int deleteBoard(int usbId);//게시글 삭제
    public void increaseViewcnt(int usbId);//조회수 증가
    */
}