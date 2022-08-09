package com.inus.sh.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RestController;

import com.inus.sh.config.auth.CustomUserDetails;
import com.inus.sh.service.AuthService;
import com.inus.sh.service.UserService;
import com.inus.sh.utils.UserInfoSessionUpdate;

@RestController
public class UserApiController {

	@Autowired
	UserService userService;
	@Autowired
	BCryptPasswordEncoder encodePwd;
	@Autowired
	AuthService authService;
	
	// 내 비밀번호, 닉네임 수정하기
	@PatchMapping("/api/user/info")
	public ResponseEntity<String> modifyInfo(String value, String valueType, String prevPassword, 
	        @AuthenticationPrincipal CustomUserDetails principal, HttpSession session) {
	    // value = 변경할 값
	    // valueType = password, nickname, phone
	    String username = principal.getUsername();
	    String msg = "";
	    
	    switch (valueType) {
	    case "password":
	        if(!encodePwd.matches(prevPassword, principal.getPassword())) {
	        	return ResponseEntity.badRequest().body("비밀번호가 일치하지 않습니다");
	        } 
	        value = encodePwd.encode(value);
	        msg = "비밀번호가 변경되었습니다";
	        break;
	        
	    case "nickname":
	        msg = "닉네임이 변경되었습니다";
	        break;
	    case "phone":
	        msg = "전화번호가 변경되었습니다";
	        session.setMaxInactiveInterval(0);
	        session.setAttribute("authNum", null);
	        break;
	    }
	    
	    userService.modifyInfo(username, valueType, value);
	    UserInfoSessionUpdate.sessionUpdate(value, valueType, principal, session);
	    
	    return ResponseEntity.ok().body(msg);
	}
	
}
