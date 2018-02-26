package minwoo.cms.user.manmes.controller;

import java.util.ArrayList;
import java.util.List;

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
	
	@RequestMapping(value="user/listMess",method={RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public List<Mes>listMess(String userId){		

		return manmesService.listMess(userId);		
		
	}
	
	@RequestMapping(value ="user/delMess", method= RequestMethod.POST)
	@ResponseBody
	public boolean delMes(Mes mes){
		//manUser.setTmpCheckVal(Arrays.asList(manUser.getCheckVal()));
		List<String> list = new ArrayList<String>();
		String chkMes =mes.getChecked();
		String[] array;
		
		array = chkMes.split(",");
		for(int i=0;i<array.length;i++){
			list.add(array[i]);
		}		
		  System.out.println(list);	
		  mes.setTmpChecked(list);		
		return manmesService.delMess(mes);
	}

}