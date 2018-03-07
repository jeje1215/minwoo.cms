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

   //게시글 상세보기
   @Override
   public BoardVo readContent(int usbId) {
	return boardDao.readBoard(usbId);
   }

   //게시글 하나 가져오기
   @Override
   public BoardVo onelistboard(int usbId) {
	return boardDao.oneListBoard(usbId);
   }

   //게시물 수정
   @Transactional
   public boolean fixBoard(BoardVo boardVo) {
	return boardDao.updateBoard(boardVo)>0;
   }

   //게시물 삭제
   @Transactional
   public int secede(int usbId) {
	   //★★ 댓글 게시판 삭제판단이 안됩니다. 메인게시판, 서브게시판 동일하니 같이 작업하시기 바랍니다.★★
	   int result = 0;
	   BoardVo boardVo = new BoardVo();
	   System.out.println("1");
	   boardVo = boardDao.selectComment(usbId);
	   System.out.println("2");
	   if(boardVo != null){
		   System.out.println("3");
		   result = 2;
	   }else{
		   System.out.println("4");
		   result = boardDao.deleteBoard(usbId);
	   }
	 return result;
   }
   
   public void plusCnt(int usbId){
	   boardDao.updateCnt(usbId);
   }
   
}