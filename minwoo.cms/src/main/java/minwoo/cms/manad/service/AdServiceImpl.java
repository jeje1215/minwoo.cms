package minwoo.cms.manad.service;

import java.util.List;

import minwoo.cms.manad.dao.AdDao;
import minwoo.cms.manad.domain.Ad;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdServiceImpl implements AdService{
	@Autowired private AdDao adDao;
	
	public List<Ad>listAds(){
		return adDao.getAds();
	}

}
