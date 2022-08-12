package com.inus.NY.controller;



import java.awt.Font;
import java.sql.Blob;
import java.util.Base64;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.inus.NY.profile.vo.profilelistVO;


@Controller

public class NYController {
	@Autowired
	SqlSession	sqlsession; 
	
	


	   @RequestMapping("/LOG_JOIN")
	   public String LOGINController() {
	      return "LoginLoinus";
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




