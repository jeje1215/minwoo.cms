package minwoo.cms.common.controller;

import minwoo.cms.board.service.BoardService;
import minwoo.cms.manad.service.AdService;
import minwoo.cms.manboard.service.ManboardService;
import minwoo.cms.manboard.service.SubboardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@Autowired ManboardService manboardService;
	@Autowired SubboardService subboardService;
	@Autowired AdService adService;
	@Autowired BoardService boardService;
	
	// cover page 이동
	@RequestMapping("/")
	public String main(){
		return "common/cover";
	}
	// 공통 페이지 이동
	@RequestMapping(value="/url", method = RequestMethod.POST)
	public String url(String url){
		return url;
	}
	
	//메인페이지 이동
	@RequestMapping(value="/main", method = RequestMethod.POST)
	public String urlMenu_main(String url, Model model){
		//왼쪽메뉴 나타내는 model
		model.addAttribute("man_boardlist", manboardService.boardList()); //메인 게시판<- List<T>
		model.addAttribute("sub_boardlist", subboardService.boardList()); //서브 게시판<- List<T>
		model.addAttribute("ads_img", adService.findAdList());
		return url;
	}	
	
	//메인페이지 이동2
	@RequestMapping(value="/main2", method = RequestMethod.POST)
	public String urlMenu_main2(String url, Model model, int mvsubid){
		//왼쪽메뉴 나타내는 model
		model.addAttribute("man_boardlist", manboardService.boardList()); //메인 게시판<- List<T>
		model.addAttribute("sub_boardlist", subboardService.boardList()); //서브 게시판<- List<T>
		model.addAttribute("ads_img", adService.findAdList());
		model.addAttribute("mvsubid", mvsubid);
		model.addAttribute("mvsubNm", boardService.getSubNm(mvsubid));
		return "main";
	}	

	//쪽지창 이동
	@RequestMapping(value="cms/message")
	public String message_move(){
		return "message/main";
	}		
}
