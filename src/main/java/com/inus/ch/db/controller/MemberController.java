package com.inus.ch.db.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.inus.ch.server.room.vo.Channel;

@RestController
public class MemberController {
	
	
	@Autowired
	private SqlSession ss;
	
	@RequestMapping("/DUMMY")
	public ModelAndView dummyPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dummyPage/dummyPage");
		return mv;
	}
	
	@RequestMapping("/serverMove")
	public ModelAndView ServerMove(Channel chn) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("userId", chn.getUserId());
		mv.addObject("channelList", chn.getChannelList());
		mv.setViewName("ServerPage");
		return mv;
	}
}
