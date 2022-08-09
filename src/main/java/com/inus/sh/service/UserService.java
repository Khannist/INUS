package com.inus.sh.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inus.sh.dao.UserMapper;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	
	public void modifyInfo(String username, String valueType, String value) {
	    Map<String, Object> map = new HashMap<>();
	    map.put("username", username);
	    map.put("valueType", valueType);
	    map.put("value", value);
	    userMapper.modifyInfo(map);
	}
}
