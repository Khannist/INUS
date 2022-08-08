package com.inus.sh.dao;

import org.apache.ibatis.annotations.Mapper;

import com.inus.sh.Dto.SignupDto;
import com.inus.sh.config.auth.CustomUserDetails;



@Mapper
public interface AuthMapper {

	public int usernameChk(String username);
	
	public void signup(SignupDto signupDto);
	
	public CustomUserDetails getUser(String username);
	

}
