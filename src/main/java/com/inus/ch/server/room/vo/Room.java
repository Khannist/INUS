package com.inus.ch.server.room.vo;

import lombok.Data;

@Data
public class Room {
	private int roomNumber;
	private String roomList;
	private String roomCode;
	private String roomName;
	private String userId;
	private String channelCode;
}
