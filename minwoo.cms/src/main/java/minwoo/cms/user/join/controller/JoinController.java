package minwoo.cms.user.join.controller;

import minwoo.cms.user.join.domain.User;
import minwoo.cms.user.join.service.JoinService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JoinController {
	@Autowired private JoinService joinService;

	//회원가입
	@RequestMapping(value="/join/userJoin", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody 
	public boolean userJoin(User user){
		return joinService.userJoin(user);
	}	
	
}
