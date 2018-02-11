package minwoo.cms.manboard.controller;

import minwoo.cms.manboard.domain.ManboardInfo;
import minwoo.cms.manboard.service.ManboardService;
import minwoo.cms.manboard.service.SubboardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ManboardContrlloer {
	@Autowired ManboardService manboardService;
	@Autowired SubboardService subboardService;
	
	//세팅페이지 이동
	//관리자 게시판 이동
	@RequestMapping(value="/manboard/manageBoard", method = RequestMethod.POST)
	public String urlMenu_manboard(String url, Model model){
		model.addAttribute("man_boardlist", manboardService.boardList()); //<- List<T>
		model.addAttribute("sub_boardlist", subboardService.boardList()); //<- List<T>
		return url;
	}
	
	
	//메인 게시판 등록
	@RequestMapping(value="manboard/manageBoard/madd", method = RequestMethod.POST)
	@ResponseBody
	public boolean manboard_madd(ManboardInfo manboardInfo){
		return manboardService.addManboard(manboardInfo);
	}
	
}
