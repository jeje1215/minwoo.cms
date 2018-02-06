package minwoo.cms.manad.dao;

import java.util.List;

import minwoo.cms.manad.domain.Ad;

public interface AdDao {
	List<Ad>getAds(); //광고 목록
	Ad getAd(int AdNo); //광고 한개
	int addAd(String adname); //광고 추가 
	int updateAd(Ad Ad); //광고 수정
	int delAd(int AdNo); //광고 삭제 

}
