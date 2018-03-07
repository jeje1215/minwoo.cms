package minwoo.cms.board.controller;

import java.util.List;

import minwoo.cms.board.domain.BoardVo;
import minwoo.cms.board.service.BoardService;
import minwoo.cms.comments.domain.Comments;
import minwoo.cms.comments.service.ComService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	@Autowired private ComService comService;


	@RequestMapping(value = "/board/list", method = RequestMethod.POST)
	public String boardlist(String url) {
		return url;
	}

	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String boardadd(String url, int mvsubid,Model model) {
		model.addAttribute("mvsubid", mvsubid);
		return url;
	}

	@RequestMapping(value = "/board/detail", method = RequestMethod.POST)
	public String boardone(String url, Model model, int usbId, int selmvsubid) {
		boardService.plusCnt(usbId);
		model.addAttribute("board_one", boardService.onelistboard(usbId));
		model.addAttribute("comment_list", comService.listComs(usbId));
		model.addAttribute("mvsubid", selmvsubid);
		return url;
	}

	@ResponseBody
	@RequestMapping(value = "/cms/main/listboards")
	public List<BoardVo> boardlist(int subid) {
		return boardService.listBoards(subid);
	}

	@RequestMapping(value = "/main/createboard", method = { RequestMethod.POST,
			RequestMethod.GET })
	@ResponseBody
	public boolean createBoard(BoardVo boardVo) {
		return boardService.createBoard(boardVo);
	}

	@ResponseBody
	@RequestMapping(value = "/board/fixBoard", method = { RequestMethod.POST,
			RequestMethod.GET })
	public boolean fixBoard(BoardVo boardVo) {
		return boardService.fixBoard(boardVo);
	}

	@ResponseBody
	@RequestMapping(value = "/board/del", method = { RequestMethod.POST,
			RequestMethod.GET })
	public int secede(int usbId) {
		//0 -> error, 1 -> 성공, 2-> 댓글 있음
		return boardService.secede(usbId);
	}
}