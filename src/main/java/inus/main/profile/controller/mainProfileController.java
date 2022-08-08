package inus.main.profile.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import inus.main.profile.vo.profilelistVO;

@Controller
public class mainProfileController {
	
	   @Autowired
	   private SqlSession sqlSession;

	   
	   @RequestMapping("/")
	   public String index() {
	      return "index";
	   }
//	   
	   // 전체목록보기
	   @RequestMapping("/MAIN")
	   public String MainPageController(Model model) {
	      List<profilelistVO> profilelist = sqlSession.selectList("profile_test.Mainprofile");
	      model.addAttribute("profilelist", profilelist);
	      return "Main";
	   }
   
	   @RequestMapping("/JOIN")
	   public String JoinusController() {
	      return "JoinUs";
	   }
	   @RequestMapping("/SERVER")
	   public String RoomController() {
	      return "ServerPage";
	   }
	   @RequestMapping("/AddServer")
	   public String AddServerController() {
	      return "AddServerRoom";
	   }
	   @RequestMapping("/AddOneToOneChat")
	   public String AddOneToOneChatController() {
	      return "AddOneToOneChat";
	   }
	   @RequestMapping("/POST")
	   public String PostingController() {
	      return "PostingPage";
	   }
	   @RequestMapping("/FLIST")
	   public String FListController() {
	      return "FList";
	   }
//	 @RequestMapping(value="/MPRO")
//	   private String mainProfileList(Model model) throws Exception{
//	      List<profilelistVO> profilelist = sqlSession.selectList("com.god.bo.test.mapper.TestMapper");
//	      model.addAttribute("profilelist",profilelist);	//값 넣기
//	      return "mainProfileList";
//	   }
	   
	
	
}
