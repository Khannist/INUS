package com.inus.sh.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.inus.sh.dao.AuthMapper;

@Service
public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	AuthMapper authMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("userid = " + username);
		CustomUserDetails principal = authMapper.getUser(username);
		System.out.println("authMapper.getUser(userid) = " + authMapper.getUser(username));
		System.out.println("principal = " + principal );
		if(principal == null) throw new UsernameNotFoundException("회원이 존재하지 않습니다");
		
		return principal;
	}

	
}
