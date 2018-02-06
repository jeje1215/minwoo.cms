package minwoo.cms.manad.service;

import java.util.List;

import minwoo.cms.manad.domain.Ad;

public interface AdService {
	List<Ad>listAds(); //광고 목록
	Ad findAd(int adNo); //광고 한개
	boolean join(String adName); //광고 추가 
	boolean fixAdInfo(Ad ad); //광고 수정
	boolean secede(int adNo); //광고 삭제 

}
