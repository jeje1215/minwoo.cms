package minwoo.cms.comments.controller;

import minwoo.cms.comments.domain.Comments;
import minwoo.cms.comments.service.ComService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ComController {
	@Autowired private ComService comService;

	@RequestMapping(value = "/board/comsend2", method = RequestMethod.POST)
	@ResponseBody
	public boolean comjoin(Comments comments, Model model) {
		boolean result = false;
		result = comService.comjoin(comments);
		model.addAttribute("comment_list", comService.listComs(comments.getUsbId()));
		return result;
	}
	

	@RequestMapping(value = "/board/comsend_del", method = RequestMethod.POST)
	@ResponseBody
	public boolean comdel(Comments comments) {
		return comService.comdel(comments.getComId());
	}	
}
