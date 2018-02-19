package minwoo.cms.user.manmes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import minwoo.cms.manboard.domain.ManboardInfo;
import minwoo.cms.manboard.domain.SubboardInfo;
import minwoo.cms.user.manmes.domain.Mes;
import minwoo.cms.user.manmes.service.ManMesService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ManMesController {
	@Autowired private ManMesService manmesService;
	
	@RequestMapping(value="user/manmes")
	public String main(){
		return "user/manmes/main";
	}
	
//	@RequestMapping(value="listMes",method=RequestMethod.GET))
//	@ResponseBody
//	public List<Mes>listMess_list(String userId)  throws Exception {
//		List<Mes>listMess=new List<mes>list
//	
//	}
//}
}


