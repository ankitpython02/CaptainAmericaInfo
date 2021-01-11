package com.learning.service;

import java.util.List;

import com.learning.entities.Captains;


public interface CaptiansAmericaService 
{
	
	//Saving Captains
	public boolean save(Captains captains);
	
	//Fetching the Captains
	public List<Captains> getCaptains();

}
