package com.inus.sh.utils;

import org.springframework.ui.Model;

public class Script {
	
	public static String locationMsg(String locationUrl, String msg, Model model) {
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append("<script>");
		stringBuilder.append("alert('"+msg+"');");
		stringBuilder.append("</script>");
		stringBuilder.toString();
		model.addAttribute("locationMsg" ,stringBuilder);
		return "utils/locationMsg";
		return "/sh/utils/locationMsg";
	}
}
