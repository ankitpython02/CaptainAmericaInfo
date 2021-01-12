package com.learning.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.learning.entities.Captains;
import com.learning.service.CaptiansAmericaService;

@Controller
public class CaptainController {

	@Autowired
	CaptiansAmericaService captainAmericaService;

	public CaptiansAmericaService getCaptainAmericaService() {
		return captainAmericaService;
	}

	public void setCaptainAmericaService(CaptiansAmericaService captainAmericaService) {
		this.captainAmericaService = captainAmericaService;
	}

	@Autowired
	ModelAndView modelandview;

	public ModelAndView getModelandview() {
		return modelandview;
	}

	public void setModelandview(ModelAndView modelandview) {
		this.modelandview = modelandview;
	}

//	//Home page
//	@RequestMapping({ "/", "/index", "/home" })
//	public ModelAndView homepage() {
//		return new ModelAndView("index");
//	}

	// RegisterForm for Captain
	@RequestMapping("/registerCaptain")
	public ModelAndView registerCaptain() {
		return new ModelAndView("register");
	}

	// Saving Captains
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveCaptain(HttpServletRequest request, HttpServletResponse response,

			@ModelAttribute("captains") Captains captains) {
		System.out.println(captains.toString());
		String check = request.getParameter("check");
		if (check == null) {
			System.out.println("Please Check Terms & Condition");
			modelandview.setViewName("register");
		} else {
			captainAmericaService.save(captains);
		}

		return new ModelAndView("redirect:/index.html");
	}

	// Fetching the Captains
	@RequestMapping({ "/", "/index", "/home" })
	public ModelAndView fetchCaptains() {
		List<Captains> captains = captainAmericaService.getCaptains();
		for (Captains c : captains) {
			System.out.println(c.getName());
		}
		modelandview.addObject("captains", captains);
		modelandview.setViewName("index");
		return modelandview;

	}

	// Delete Captains
	@RequestMapping("/delete/{id}")
	public ModelAndView deleteCaptains(@PathVariable("id") long id) {
		captainAmericaService.delete(id);
		return new ModelAndView("redirect:/index.html");

	}

	@RequestMapping("/update/{id}")
	public ModelAndView updateCaptains(@PathVariable("id") long id, @ModelAttribute Captains captains) {
		Captains captain = captainAmericaService.getCaptainById(captains);
		modelandview.addObject("captains", captain);
		modelandview.setViewName("update_form");
		return modelandview;
	}

}
