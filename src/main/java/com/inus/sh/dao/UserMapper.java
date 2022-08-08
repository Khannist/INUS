package com.inus.sh.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

	// 유저정보 수정
	public void modifyInfo(Map<String, Object> map);
}
