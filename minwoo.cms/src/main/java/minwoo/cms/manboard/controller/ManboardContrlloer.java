package minwoo.cms.manboard.controller;

import minwoo.cms.manboard.service.ManboardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManboardContrlloer {
	@Autowired ManboardService manboardService;
	
	//왼쪽 위치에 리스트를 보여줌
	@RequestMapping(value="/manboard/manageBoard/list", method = RequestMethod.POST)
	public String manboard_list(Model model){
		System.out.println("실행은 함?");
		model.addAttribute("boardlist", manboardService.boardList());
		return "/manboard/manageBoard";	
	}
	
}
