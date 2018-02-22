package minwoo.cms.board.controller;

import java.util.List;

import minwoo.cms.board.domain.BoardVo;
import minwoo.cms.board.service.BoardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BoardController {
   @Autowired BoardService boardService;

   @RequestMapping("/board")
   public String list() {
      return "board/list";
   }
   
   @RequestMapping(value="/board/list", method = RequestMethod.POST)
   public String boardlist(String url){
      return url;
   }
   
   @RequestMapping(value="/board/write", method = RequestMethod.POST)
   public String boardadd(String url){
      return url;
   }

   @ResponseBody
   @RequestMapping("/cms/main/listboards")
   public List<BoardVo> boardlist() {
      return boardService.listBoards();
   }
   
   @RequestMapping(value="/main/createboard" , method={RequestMethod.POST,RequestMethod.GET})
   @ResponseBody
   public boolean createBoard(BoardVo boardVo){
      return boardService.createBoard(boardVo);
   }
}