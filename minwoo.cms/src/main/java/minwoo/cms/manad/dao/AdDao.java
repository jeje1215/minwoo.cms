package minwoo.cms.manad.dao;

import java.util.List;

import minwoo.cms.manad.domain.Ad;

public interface AdDao {
	List<Ad>getAds();
//	Ad getAd(int adsId);
	int addAd(Ad ad);
	int delAd(int adsId);
	

}
