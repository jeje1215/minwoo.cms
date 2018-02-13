package minwoo.cms.manad.controller;

import java.util.List;

import minwoo.cms.manad.domain.Ad;
import minwoo.cms.manad.service.AdService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdController {
	@Autowired private AdService adService;
	
	@RequestMapping("/manad")
	public String main(){
		return "manad/main";
	}
	@RequestMapping("listads")
	@ResponseBody
	public List<Ad>listAds(){
		return adService.listAds();
	}	
	@RequestMapping("adjoin")
	@ResponseBody
	public boolean addjoin(Ad ad){
		System.out.println("남승창 바보");
		return adService.adjoin(ad);
		
	}	
	@RequestMapping("delad")
	@ResponseBody
	public boolean secede(int adsId){
		return adService.secede(adsId);
		
	}
	@RequestMapping("fixAdInfo")
	@ResponseBody
	public boolean fixAdInfo(Ad ad){
		return adService.fixAdInfo(ad);
		
	}
}
