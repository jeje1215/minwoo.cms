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
		//return "index";
	}
	// 페이지 이동
	@RequestMapping(value="/url", method=RequestMethod.POST)
	public String url(String url){
		return url;
	}
}