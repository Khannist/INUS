package com.inus.ch.db.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.inus.ch.db.vo.MemberVO;



@RestController
public class MemberController {
	
	@Autowired
	private SqlSession ss;
	


}
