package com.inus.ch.server.room.chat.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.inus.ch.server.room.vo.Channel;
import com.inus.ch.server.room.vo.Chat;
import com.inus.ch.server.room.vo.Room;


@RestController
public class ChatController {

	@Autowired
	private SqlSession ss;
	
	/**
	 * 방 생성하기
	 * @param params
	 * @return
	 */
	@RequestMapping("/createRoom")
	public @ResponseBody ModelAndView createRoom(Room room){
		ModelAndView mav = new ModelAndView();
		String roomName = room.getRoomName();
		if(roomName != null && !roomName.trim().equals("")) {
			String roomCode = "";
			Boolean flag = true;
			while(flag) {
				roomCode = RandomStringUtils.randomAlphanumeric(8);
				String tempCode = ss.selectOne("ChatMapper.checkSameRoomCode", roomCode);
				if(tempCode == null) {
					flag = false;
				}
			}
			room.setRoomCode(roomCode);
			ss.insert("ChatMapper.insertChatRoom", room);
			List<Room> roomList = ss.selectList("ChatMapper.checkSameRoomList", room);
			int num = 0;
			if(roomList.toString().length() > 0) {
				for(Room tempListnum : roomList) {
					int tnum = Integer.parseInt(tempListnum.getRoomList().substring(room.getChannelCode().toString().length()+1));
					if(tnum == num) {
						num++;
					}else {
						break;						
					}
				}				
			}
			room.setRoomList(room.getChannelCode()+"_"+num);
			ss.insert("ChatMapper.AddChatRoom", room);
			mav.addObject("room", room);
			
		}
		mav.setViewName("forward:/getRoom");
		return mav;
		
		
	}

	/**
	 * 방 정보가져오기
	 * @param params
	 * @return
	 */
	@RequestMapping("/getRoom")
	public @ResponseBody void getRoom(HttpServletResponse res, Room room) throws Exception{
		Gson gson = new Gson();
		Map<String, Object> data = new HashMap<String, Object>();
		List<Room> list = ss.selectList("ChatMapper.getChatRoom", room);
		// channel_dt 테이블 조회후 채널이름 데이터 가져와서 서버이름에 삽입
		if(list.size() > 0) {
			data.put("list", list);
		}
		res.getWriter().print(gson.toJson(data));
	}
	/**
	 * 채팅방
	 * @return
	 */
	@RequestMapping("/moveChating")
	public void chating(HttpServletResponse res,Room room)throws Exception {
		Gson gson = new Gson();
		Map<String, Object> data = new HashMap<String, Object>();
		String roomCode = room.getRoomCode();
		List<Room> roomList = ss.selectList("ChatMapper.getChatRoom", room);
		List<Room> new_list = roomList.stream().filter(o->o.getRoomCode().equals(roomCode)).collect(Collectors.toList());
		if(new_list != null && new_list.size() > 0) {
			
			data.put("channelCode", room.getChannelCode());
			data.put("roomCode", room.getRoomCode());
		}
		data.put("userId", room.getUserId());
		res.getWriter().print(gson.toJson(data));
		
	}

	/*
	 * 룸체크
	 * 
	 */
	@RequestMapping("/checkRoom")
	public void checkRoom(HttpServletResponse res,Room room)throws Exception{
		Gson gson = new Gson();
		Map<String, Object> data = new HashMap<String, Object>();
		String msg = "yes";
		List<Room> list = ss.selectList("ChatMapper.getChatRoom", room);
		if(list.size() > 0) {
			msg = "no";
		}
		data.put("msg", msg);
		res.getWriter().print(gson.toJson(data));
	}
	
	/*
	 * 채팅방 삭제
	 * 
	 */
		@RequestMapping("/delRoom")
		public ModelAndView delRoom(Room room){
			ModelAndView mav = new ModelAndView();
			ss.delete("ChatMapper.delRoom", room);
			ss.delete("ChatMapper.delRoomCh", room);
			ss.delete("ChatMapper.delRoomChat", room);
			
			
			List<Room> delList = ss.selectList("ChatMapper.selectDelRoomList", room);
			if(delList.size() > 1) {
				for(int i = 0; i < delList.size(); i++) {
					String tempList = delList.get(i).getRoomList().substring(0, room.getChannelCode().length()+1) + i;
					delList.get(i).setRoomList(tempList);
					delList.get(i).setChannelCode(room.getChannelCode());
					Room temproom = delList.get(i);
					ss.update("ChatMapper.updateDelRoomList", temproom);
				}				
			}
			
			mav.addObject("room", room);
			mav.setViewName("forward:/getRoom");
			return mav;
		}

	/*
	 * 채널 생성
	 * 
	 */
	@RequestMapping("/createChannel")
	public @ResponseBody ModelAndView createChannel(Channel chn){
		ModelAndView mav = new ModelAndView();
		if(chn.getChannelName() != null && !chn.getChannelName().trim().equals("")) {
			String channelCode = "";
			
			//동일한 코드가 있는지 계속 반복
			Boolean flag = true;
			while(flag) {
				channelCode = RandomStringUtils.randomAlphanumeric(8);
				String tempCode = ss.selectOne("ChatMapper.checkSameChannelCode", channelCode);
				if(tempCode == null) {
					flag = false;			
				}
			}
			
			chn.setChannelCode(channelCode);
			ss.insert("ChatMapper.createChatChannel", chn);
			List<Channel> chnList = ss.selectList("ChatMapper.checkSameChannelList", chn);
			
			// 채널 리스트 순서 로직
			int num = 0;
			if(chnList.toString().length() > 0) {
				for(Channel tempListnum : chnList) {
					int tnum = Integer.parseInt(tempListnum.getChannelList().substring(chn.getUserId().toString().length()+1));
					if(tnum == num) {
						num++;
					}else {
						break;						
					}
				}				
			}
			chn.setChannelList(chn.getUserId()+"_"+num);
			ss.insert("ChatMapper.AddChatChannel", chn);
			mav.addObject("chn", chn);
		
		}
		mav.setViewName("forward:getChannel");
		return mav;
	}
	
	
	/**
	 * 채널 정보가져오기
	 * @param params
	 * @return
	 */
	@RequestMapping("/getChannel")
	public @ResponseBody void getChannel(HttpServletResponse res,Channel chn) throws Exception{
		Gson gson = new Gson();
		Map<String, Object> data = new HashMap<String, Object>();
		List<Channel> list = ss.selectList("ChatMapper.getChatChannel", chn);
		if(list.size() > 0) {
			data.put("list", list);
		}
		res.getWriter().print(gson.toJson(data));
	}
	
	
	/*
	 * 채널 삭제
	 * 
	 */
		@RequestMapping("/delChan")
		public ModelAndView delChannel(Channel chn){
			ModelAndView mav = new ModelAndView();
			ss.delete("ChatMapper.delChannelUser", chn);
			
			List<Channel> delList = ss.selectList("ChatMapper.selectChannelList", chn);
			if(delList.size() > 1) {
				for(int i = 0; i < delList.size(); i++) {
					String tempList = delList.get(i).getChannelList().substring(0, chn.getUserId().length()+1) + i;
					delList.get(i).setChannelList(tempList);
					delList.get(i).setUserId(chn.getUserId());
					Channel temproom = delList.get(i);
					ss.update("ChatMapper.updateDelChnList", temproom);
				}				
			}
			
			
			
			
			-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			mav.addObject("chn", chn);
			mav.setViewName("forward:getChannel");
			return mav;
		}
	
	
	
	
	
	
	
	
	
	/**
	 * 채팅방
	 * @return
	 */
	@RequestMapping("/moveRoom")
	public void moveRoom(HttpServletResponse res, Channel chn,@RequestParam HashMap<Object, Object> params)throws Exception {
		Gson gson = new Gson();
		Map<String, Object> data = new HashMap<String, Object>();
		int roomNumber = Integer.parseInt((String) params.get("roomNumber"));
		String channelCode = chn.getChannelCode();
		List<Channel> chnList = ss.selectList("ChatMapper.getChatChannel", chn.getUserId());
		List<Channel> new_list = chnList.stream().filter(o->o.getChannelCode().equals(channelCode)).collect(Collectors.toList());
		if(new_list != null && new_list.size() > 0) {
			data.put("channelName", chn.getChannelName());
			data.put("channelCode", chn.getChannelCode());
			data.put("roomNumber", roomNumber);
		}else {
			data.put("userId", chn.getUserId());
			
		}
		res.getWriter().print(gson.toJson(data));
	}
	
	/*
	 * 채팅 목록 불러오기 
	 * 
	 */
	@RequestMapping("/getChat")
	public @ResponseBody void getChat(HttpServletResponse res, Chat chat) throws Exception{
		Gson gson = new Gson();
		Map<String, Object> data = new HashMap<String, Object>();
		List<Chat> list = ss.selectList("ChatMapper.getChat", chat);
		if(list.size() > 0) {
			data.put("list", list);
		}
		res.getWriter().print(gson.toJson(data));
	}
	
	
	
	
}

	
