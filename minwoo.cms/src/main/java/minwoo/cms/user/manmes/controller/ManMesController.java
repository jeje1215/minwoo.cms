package minwoo.cms.user.manmes.controller;

import java.util.List;

import minwoo.cms.user.manmes.domain.Mes;
import minwoo.cms.user.manmes.service.ManMesService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ManMesController {
	@Autowired private ManMesService manmesService;
	
	@RequestMapping(value="user/manmes")
	public String main(){
		return "user/manmes/main";
	}
//	
//	@ResponseBody
//	@RequestMapping(value="meslists",method=RequestMethod.POST)
//	public List<Mes>listMess(
//		String userId=Integer.parsInt(reqeust.getParameter("userId"));
//		
//	request.setAttribute("userId",userId);
//	retru
//	
//}
	}
