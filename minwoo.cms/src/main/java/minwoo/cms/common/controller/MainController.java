package minwoo.cms.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
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
	public String urlMenu_main(String url){
		return url;
	}	
	
	//세팅페이지 이동
	//관리자 게시판 이동
	@RequestMapping(value="/manboard/manageBoard", method = RequestMethod.POST)
	public String urlMenu_manboard(String url){
		return url;
	}

}