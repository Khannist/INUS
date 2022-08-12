/*package com.inus.sh.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

import com.inus.sh.Dto.SignupDto;

@Service
public class AuthService {

//	@Autowired
//	AuthMapper authMapper;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	SqlSession sqlSession;
	
	@Transactional
	public Map<String, String> validHandling(Errors errors){
		Map<String, String> validResult = new HashMap<>();
		for(FieldError error : errors.getFieldErrors()) {
			validResult.put("valid_"+error.getField(), error.getDefaultMessage());
		}
		return validResult;
	}*/
	
	//아이디 중복확인
	/*
	 * @Transactional
	 * public int usernameChk(String username) {
	 * System.out.println("서비스 userid = " + username); int result =
	 * sqlSession.selectOne("com.inus.sh.dao.AuthMapper.usernameChk", username);
	 * return result; }
	 */
	
	//회원가입
	
	/*
	 * @Transactional public void signup(SignupDto signupDto) { 
	 * String encPassword =
	 * bCryptPasswordEncoder.encode(signupDto.getPassword());
	 * signupDto.setPassword(encPassword);
	 * sqlSession.insert("com.inus.sh.dao.AuthMapper.signup", signupDto);
	 * System.out.println("password = " + encPassword); }
	 */
	 
//}
