package minwoo.cms.common.controller;

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
		model.addAttribute("man_boardlist", manboardService.boardList()); //<- List<T>
		model.addAttribute("sub_boardlist", subboardService.boardList()); //<- List<T>
		return url;
	}	
	
}