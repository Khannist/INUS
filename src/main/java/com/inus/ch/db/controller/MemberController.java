package com.inus.ch.db.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberController {
	
	
	@Autowired
	private SqlSession ss;
	
}
