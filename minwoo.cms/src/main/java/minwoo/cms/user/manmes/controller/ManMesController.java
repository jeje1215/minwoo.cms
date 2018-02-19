package minwoo.cms.user.manmes.controller;

import java.util.List;

import minwoo.cms.user.manmes.domain.Mes;
import minwoo.cms.user.manmes.service.ManMesService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ManMesController {
	@Autowired private ManMesService manmesService;
	

	@RequestMapping("/manmes")
	public String main(){
		System.out.println("낭똥개11111");
		return "user/manmes/main";
	}
	@RequestMapping("listmess")
	@ResponseBody
	public List<Mes>listMess(){
		System.out.println("낭똥개");
		return manmesService.listMess();
	}	

}
