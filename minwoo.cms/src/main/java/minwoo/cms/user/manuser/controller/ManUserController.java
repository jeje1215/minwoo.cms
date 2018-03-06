package minwoo.cms.user.manuser.controller;

import java.util.ArrayList;
import java.util.List;

import minwoo.cms.common.paging.Paging;
import minwoo.cms.user.manuser.domain.ManUser;
import minwoo.cms.user.manuser.service.ManUserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ManUserController {
	@Autowired ManUserService manUserService;

	@RequestMapping(value = "/manuser")
	public String urlMenu_manuser(Model model, Integer currentPage, Integer rowCnt) {
		ManUser manUser = new ManUser();
		System.out.println(currentPage);
		if (currentPage != null) {
			manUser.setCurrentPage(currentPage);
			manUser.setRowCnt(rowCnt);
		}
		model.addAttribute("man_userlist", manUserService.listUsers(manUser)); 
        Paging paging = new Paging();
        paging.setPageNo(1); // 페이지 번호
        paging.setPageSize(5);// 게시 글 수
        paging.setTotalCount(manUserService.cntUser());// 게시 글 전체 수
        model.addAttribute("paging", paging); 
		return "/user/manuser/manuser";
	}

	@RequestMapping(value = "/manuser/manageUser/medit", method = RequestMethod.POST)
	@ResponseBody
	public boolean manuser_medit(ManUser manUser) {
		List<String> list = new ArrayList<String>();
		String chkVal = manUser.getCheckVal();
		String[] array;
		
		array = chkVal.split(",");
		for(int i=0;i<array.length;i++){
			list.add(array[i]);
		}
		
        System.out.println(list);	
		manUser.setTmpCheckVal(list);  //테스트 부분
		return manUserService.modiLevelManUser(manUser);
	}

}
