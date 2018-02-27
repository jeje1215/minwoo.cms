package minwoo.cms.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import minwoo.cms.board.domain.BoardVo;
import minwoo.cms.board.service.BoardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
   @Autowired BoardService boardService;

 /*  @RequestMapping("/board")
   public String list() {
      return "board/list";
   }*/
   
   @RequestMapping(value="/board/list", method = RequestMethod.POST)
   public String boardlist(String url){
      return url;
   }
   
   @RequestMapping(value="/board/write", method = RequestMethod.POST)
   public String boardadd(String url){
      return url;
   }
   
   /*@RequestMapping(value="/board/view", method = RequestMethod.POST)
   public String boardview(int usbId){
	   return "board/view";
   }
   */
   @RequestMapping(value="/board/detail" , method={RequestMethod.POST,RequestMethod.GET})
   public String boardone(String url,Model model, int usbId){
	   model.addAttribute("board_one",boardService.onelistboard(usbId));
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
   
   /*@ResponseBody
   @RequestMapping("/board/fixBoard")
   public boolean fixBoard(BoardVo boardVo){
	   return boardService.fixBoard(boardVo);
   }*/
   
   @ResponseBody
   @RequestMapping(value="/board/del",  method={RequestMethod.POST,RequestMethod.GET})
   public boolean secede(int usbId){
	   return boardService.secede(usbId);
   }
}