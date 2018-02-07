package minwoo.cms.manad.dao;

import java.util.List;

import minwoo.cms.manad.dao.mapper.AdMapper;
import minwoo.cms.manad.domain.Ad;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdDaoImpl implements AdDao {
	@Autowired private AdMapper adMapper;
	
	//광고목록을 얻는다.
	//광고 목록 (return)
	public List<Ad>getAds(){
		return adMapper.getAds();
	}
	//광고 한개를 찾는다
	//return:광고 한개
	//param:광고 번호 
	public Ad getAd(int adNo){
		return adMapper.getAd(adNo);
	}
	//광고를 추가한다.
	public int addAd(String adName){
		return adMapper.addAd(adName);
	}
	
	//광고를 수정한다
	public int updateAd(Ad ad){
		return adMapper.updateAd(ad);
	}
	
	//광고 삭제한다.
	public int delAd(int adNo){
		return adMapper.delAd(adNo);
	}		

}
