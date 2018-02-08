package minwoo.cms.manboard.service;

import minwoo.cms.manboard.dao.ManboardDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManboardServiceImpl implements ManboardService{
	@Autowired ManboardDao manboardDao;
	
	
}
