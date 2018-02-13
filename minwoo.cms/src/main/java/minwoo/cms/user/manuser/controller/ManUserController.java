package minwoo.cms.user.manuser.controller;

import minwoo.cms.user.manuser.service.ManUserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManUserController {
	@Autowired ManUserService manUserService;
	
	@RequestMapping(value="/manuser")
	public String urlMenu_manuser(Model model){
		model.addAttribute("man_userlist", manUserService.listUsers()); //<- List<T>
		return "/user/manuser/manuser";
	}

}
