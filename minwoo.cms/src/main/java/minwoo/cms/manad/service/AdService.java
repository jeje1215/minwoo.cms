package minwoo.cms.manad.service;

import java.util.List;

import minwoo.cms.manad.domain.Ad;

public interface AdService {
	List<Ad>listAds(); //광고목록
	Ad findAd(int adsId); //광고 한개 
	boolean adjoin(Ad ad); //광고 추가 
	boolean secede(int adsId); //광고 삭제
	boolean fixAdInfo(Ad ad); //광고 수정 

}
