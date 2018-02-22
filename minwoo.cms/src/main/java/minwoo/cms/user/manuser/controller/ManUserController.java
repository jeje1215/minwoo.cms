package minwoo.cms.user.manuser.controller;

import java.util.Arrays;

import minwoo.cms.user.manuser.domain.ManUser;
import minwoo.cms.user.manuser.service.ManUserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ManUserController {
	@Autowired ManUserService manUserService;
	
	@RequestMapping(value="/manuser")
	public String urlMenu_manuser(Model model){
		model.addAttribute("man_userlist", manUserService.listUsers()); //<- List<T>
		return "/user/manuser/manuser";
	}
	
	@RequestMapping(value="/manuser/manageUser/medit", method = RequestMethod.POST)
	@ResponseBody
	public boolean manuser_medit(ManUser manUser){
		manUser.setTmpCheckVal(Arrays.asList(manUser.getCheckVal()));
		System.out.println(manUser.getTmpCheckVal());
		return manUserService.modiLevelManUser(manUser); //권한수정 Proc
	}	
	
}
