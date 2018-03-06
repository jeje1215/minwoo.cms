package minwoo.cms.comments.controller;

import minwoo.cms.comments.domain.Comments;
import minwoo.cms.comments.service.ComService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ComController {
	@Autowired private ComService comService;
	
	//안쓰는거 ~ board에서 씀
	@RequestMapping(value="/cms/comsend2",method=RequestMethod.POST)
	@ResponseBody
	public boolean comjoin(Comments comments){
		System.out.println("안녕");
		return comService.comjoin(comments);
	}
	

}
