package minwoo.cms.user.manuser.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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

	@RequestMapping(value = "/manuser")
	public String urlMenu_manuser(Model model) {
		model.addAttribute("man_userlist", manUserService.listUsers()); 
		return "/user/manuser/manuser";
	}

	@RequestMapping(value = "/manuser/manageUser/medit", method = RequestMethod.POST)
	@ResponseBody
	public boolean manuser_medit(ManUser manUser) {
		//manUser.setTmpCheckVal(Arrays.asList(manUser.getCheckVal()));
		List<String> list = new ArrayList<String>();
		String chkVal = manUser.getCheckVal();
		String[] array;
		
		array = chkVal.split(",");
		for(int i=0;i<array.length;i++){
			list.add(array[i]);
		}
		
/*		List<String> tmpCheckVal = Arrays.asList(manUser.getCheckVal());
        for(String tmp : tmpCheckVal) {
        	list.add(tmp);
        }		*/
		
        //System.out.println(list);	
		manUser.setTmpCheckVal(list);
		return manUserService.modiLevelManUser(manUser);
	}

}
