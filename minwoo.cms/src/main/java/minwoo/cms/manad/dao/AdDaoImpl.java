package minwoo.cms.manad.dao;

import java.util.List;

import minwoo.cms.manad.dao.mapper.AdMapper;
import minwoo.cms.manad.domain.Ad;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdDaoImpl implements AdDao{
	@Autowired private AdMapper adMapper;
	
	public List<Ad>getAds(){
		return adMapper.getAds();
		
	}
	public int addAd(Ad ad){
		return adMapper.addAd(ad);
	}

}
