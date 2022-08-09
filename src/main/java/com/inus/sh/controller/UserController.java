package com.inus.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.inus.sh.config.auth.CustomUserDetails;
import com.inus.sh.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	//회원 정보 수정 페이지
	@GetMapping("/myInfo")
	public String myInfo() {
		return "myInfo";
	}
	
	
}
