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
	
	//메인 게시판 수정 view
	@RequestMapping(value="manboard/manageBoard/medit_list")
	@ResponseBody
	public ManboardInfo manboard_madd(int mabId, Model model){
		ManboardInfo manboardInfo = new ManboardInfo();
		manboardInfo = manboardService.modiListManboard(mabId);
		return manboardInfo;
	}	
	
	//메인 게시판 수정 proc
	@RequestMapping(value="manboard/manageBoard/medit", method = RequestMethod.POST)
	@ResponseBody
	public boolean manboard_medit(ManboardInfo manboardInfo){
		return manboardService.modiManboard(manboardInfo);
	}	
	
	//메인 게시판 삭제 proc
	@RequestMapping(value="manboard/manageBoard/mdel", method = RequestMethod.POST)
	@ResponseBody
	public int manboard_mdel(ManboardInfo manboardInfo){
		return manboardService.removeManboard(manboardInfo);
	}		
	
}
