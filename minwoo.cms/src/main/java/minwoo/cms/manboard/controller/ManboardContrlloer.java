package minwoo.cms.manboard.controller;

import minwoo.cms.manboard.domain.ManboardInfo;
import minwoo.cms.manboard.service.ManboardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManboardContrlloer {
	@Autowired ManboardService manboardService;
	
	//세팅페이지 이동
	//관리자 게시판 이동
	@RequestMapping(value="/manboard/manageBoard", method = RequestMethod.POST)
	public String urlMenu_manboard(String url, Model model){
		ManboardInfo manboardInfo = new ManboardInfo();
		manboardInfo = manboardService.boardList();
		System.out.println(manboardService.boardList());
		//System.out.println(manboardInfo.getMabNm());
		model.addAttribute("boardlist", manboardInfo);
		return url;
	}
	
	
	//왼쪽 위치에 리스트를 보여줌
	@RequestMapping(value="/manboard/manageBoard/list", method = RequestMethod.POST)
	public String manboard_list(Model model){
		System.out.println("실행은 함?");
		model.addAttribute("boardlist", manboardService.boardList());
		System.out.println("나오긴 함?");
		return "/manboard/manageBoard";	
	}
	
}
