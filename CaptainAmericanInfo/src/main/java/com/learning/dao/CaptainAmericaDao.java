package com.learning.dao;

import java.util.List;

import com.learning.entities.Captains;

public interface CaptainAmericaDao {

	// Saving Captains
	public boolean save(Captains captains);

	// Fetching the Captains
	public List<Captains> getCaptains();

	// deleting the captain
	public void delete(Long id);

	// Fetching Captains By Id
	public Captains getCaptainById(Captains captains);

}
