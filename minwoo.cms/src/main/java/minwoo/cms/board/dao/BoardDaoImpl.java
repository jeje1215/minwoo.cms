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

   // 게시판 상세보기
   public BoardVo readBoard(int usbId){
		return boardMapper.readBoard(usbId);
	}

   // 게시물 하나가져오기
   public BoardVo oneListBoard(int usbId) {
	return boardMapper.oneListBoard(usbId);
   }
   
   //게시물 수정
   @Override
   public int updateBoard(BoardVo boardVo) {
	return boardMapper.updateBoard(boardVo);
	}

   //게시물 삭제
   @Override
	public int deleteBoard(int usbId) {
	 return boardMapper.deleteBoard(usbId);
	}
   
   public void updateCnt(int usbId){
	   boardMapper.updateCnt(usbId);
   }
}