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
	@RequestMapping(value="/url", method = {RequestMethod.GET, RequestMethod.POST})
	public String url(String url){
		return url;
	}
}