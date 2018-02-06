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
	
	//광고목록을 얻는다.
	public List<Ad>listAds(){
		return adDao.getAds();
	}
	//광고 한개를 찾는다
	public Ad findAd(int adNo){
		Ad ad=null;
		for(Ad tmp:adDao.getAds()){
			if(tmp.getAdNo()==adNo){
				ad=tmp;
				break;
			}
		}
		return ad;
	}
	//광고 추가한다
	@Transactional
	public boolean join(String adName){
		return adDao.addAd(adName)>0;
	}
	//광고 수정한다
	//r:광고 수정 성공 여부
	//p:수정할 회원
	@Transactional
	public boolean fixAdInfo(Ad ad){
		return adDao.updateAd(ad)>0;
	}
	//광고를 삭제한다.
	//r:삭제 성공 여부
	//p: 삭제할 광고
	@Transactional
	public boolean secede(int adNo){
		return adDao.delAd(adNo)>0;
	}
}
