package minwoo.cms.manad.controller;

import java.util.List;

import minwoo.cms.manad.domain.Ad;
import minwoo.cms.manad.service.AdService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class AdController {
	@Autowired private AdService adService;
	
	@RequestMapping("/")
	public String main(){
		return "main1";
	}
	@RequestMapping("/lisetAds")
	@ResponseBody
	public List<Ad>listAds(){
		return adService.listAds();
	}
	@RequestMapping("/adjoin")
	@ResponseBody
	public boolean join(String adName){
		return adService.join(adName);
	}
	@RequestMapping("/fixUserInfo")
	@ResponseBody
	public boolean fixUserInfo(Ad ad){
		return adService.fixAdInfo(ad);
	}
	@RequestMapping("/secede")
	@ResponseBody
	public boolean secede(int adNo){
		return adService.secede(adNo);
	}	
}