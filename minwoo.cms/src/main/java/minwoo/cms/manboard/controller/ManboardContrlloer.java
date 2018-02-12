package minwoo.cms.manboard.controller;

import minwoo.cms.manboard.domain.ManboardInfo;
import minwoo.cms.manboard.domain.SubboardInfo;
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
	
	//서브 게시판 등록
	@RequestMapping(value="manboard/manageBoard/sadd", method = RequestMethod.POST)
	@ResponseBody
	public boolean manboard_sadd(SubboardInfo subboardInfo){
		System.out.println("dddD");
		System.out.println(subboardInfo.getSubNm());
		return subboardService.addManboard(subboardInfo);
	}	
	
	//메인 게시판 수정 view
	@RequestMapping(value="manboard/manageBoard/medit_list")
	@ResponseBody
	public ManboardInfo manboard_mlist(int boardId){
		ManboardInfo manboardInfo = new ManboardInfo();
		manboardInfo = manboardService.modiListManboard(boardId);
		return manboardInfo;
	}	
	
	//서브 게시판 수정 view
	@RequestMapping(value="manboard/manageBoard/sedit_list")
	@ResponseBody
	public SubboardInfo manboard_slist(int boardId){
		SubboardInfo subboardInfo = new SubboardInfo();
		subboardInfo = subboardService.modiListManboard(boardId);
		return subboardInfo;
	}		
	
	//메인 게시판 수정 proc
	@RequestMapping(value="manboard/manageBoard/medit", method = RequestMethod.POST)
	@ResponseBody
	public boolean manboard_medit(ManboardInfo manboardInfo){
		return manboardService.modiManboard(manboardInfo);
	}	
	
	//서브 게시판 수정 proc
	@RequestMapping(value="manboard/manageBoard/sedit", method = RequestMethod.POST)
	@ResponseBody
	public boolean manboard_sedit(SubboardInfo subboardInfo){
		//System.out.println(subboardInfo.getSubId());
		return subboardService.modiManboard(subboardInfo);
	}		
	
	//메인 게시판 삭제 proc
	@RequestMapping(value="manboard/manageBoard/mdel", method = RequestMethod.POST)
	@ResponseBody
	public int manboard_mdel(ManboardInfo manboardInfo){
		return manboardService.removeManboard(manboardInfo);
	}	
	
	//서브 게시판 삭제 proc
	@RequestMapping(value="manboard/manageBoard/sdel", method = RequestMethod.POST)
	@ResponseBody
	public int manboard_sdel(SubboardInfo subboardInfo){
		return subboardService.removeManboard(subboardInfo);
	}		
	
}
