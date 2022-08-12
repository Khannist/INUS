
package com.inus.sh.config.auth;

import org.apache.ibatis.session.SqlSession; import
org.springframework.beans.factory.annotation.Autowired; import
org.springframework.security.core.userdetails.UserDetails; import
org.springframework.security.core.userdetails.UserDetailsService; import
org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service 
public class CustomUserDetailsService implements UserDetailsService{
@Autowired
private SqlSession sqlSession;	

public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
	CustomUserDetails principal = new CustomUserDetails();
	try {
	principal = sqlSession.selectOne("AuthMapper.getUser",userId);
	if(principal == null) { 
		throw new UsernameNotFoundException("회원이 존재하지 않습니다");
	}
	return principal; 
	} catch (Exception e) {
		e.printStackTrace();
	}
		return principal;
	}
}