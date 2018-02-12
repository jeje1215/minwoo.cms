package minwoo.cms.manad.service;

import java.util.List;

import minwoo.cms.manad.dao.AdDao;
import minwoo.cms.manad.domain.Ad;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdServiceImpl implements AdService{
	@Autowired private AdDao adDao;
	
	public List<Ad>listAds(){
		return adDao.getAds();
	}
	
//	public Ad findAd(int adsId){
//		Ad ad=null;
//		for(Ad tmp:adDao.getAds()){
//			if(tmp.getAdsId()==adsId){
//				ad=tmp;
//				break;
//			}
//		}
//		return ad;
//	}
	@Transactional
	public boolean adjoin(Ad ad){
		return adDao.addAd(ad)>0;
	}
	
	@Transactional
	public boolean secede(int adsId){
		return adDao.delAd(adsId)>0;
	}
	
}
