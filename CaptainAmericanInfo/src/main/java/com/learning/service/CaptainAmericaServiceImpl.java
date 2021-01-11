package com.learning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learning.dao.CaptainAmericaDao;
import com.learning.entities.Captains;


@Service
public class CaptainAmericaServiceImpl implements CaptiansAmericaService {

	@Autowired
	CaptainAmericaDao captainAmericaDao;
	
	public CaptainAmericaDao getCaptainAmericaDao() {
		return captainAmericaDao;
	}

	public void setCaptainAmericaDao(CaptainAmericaDao captainAmericaDao) {
		this.captainAmericaDao = captainAmericaDao;
	}

	//Saving Captains
	public boolean save(Captains captains) {
		return captainAmericaDao.save(captains);
	}

	public List<Captains> getCaptains() {
		return captainAmericaDao.getCaptains();
	}
	
}
