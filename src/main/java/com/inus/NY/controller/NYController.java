package com.inus.NY.controller;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class NYController {

	   @RequestMapping("/")
	   public ModelAndView index() {
		   ModelAndView mav = new ModelAndView();
		   mav.setViewName("index");
	      return mav;
	   }

	   @RequestMapping("/LOG_JOIN")
	   public String LOGINController() {
	      return "LoginJoinus";
	   }
	   @RequestMapping("/INUS")
	   public String INUSController() {	//이너스 소개페이지
	      return "INUS";
	   }

	   @RequestMapping("/SERVER")
	   public String RoomController() {
	      return "ServerPage";
	   }
	   @RequestMapping("/AddServer")
	   public String AddServerController() {
	      return "AddServerRoom";
	   }

	   @RequestMapping("/SET")
	   public String SetController() {
	      return "Set";
	   }
}




