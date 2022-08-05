package com.inus.ch.server.room.vo;

import lombok.Data;

@Data
public class Message {
	private String name;
	private String message;
	
	public Message() {
		
	}
	public Message(String name, String message) {
		this.name = name;
		this.message = message;
	}

}
