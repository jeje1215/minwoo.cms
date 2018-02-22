package minwoo.cms.manad.dao.mapper;

import java.util.List;

import minwoo.cms.manad.domain.Ad;

public interface AdMapper {
	List<Ad>getAds(); //광고 목록
	int addAd(Ad ad); //광고 추가 
	Ad getAd(int adsId); //광고한개
	int delAd(int adsId); //광고 삭제 
	int updateAd(Ad ad); //광고 수정
	
	List<Ad> getAdList(); //광고 조건값으로 가져오기
}
