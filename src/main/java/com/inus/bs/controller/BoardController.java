package com.inus.bs.controller;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inus.bs.vo.BoardVo;


@Controller
public class BoardController {
	
	@Autowired
	private SqlSession sqlSession;

	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	// 전체목록보기
	@RequestMapping("/boardList")
	public String boardList(Model model, BoardVo bVo) {
		List<BoardVo> boardList = sqlSession.selectList("com.inus.board.getBoard");
		model.addAttribute("boardList", boardList);
		sqlSession.update("com.inus.board.boardCount",bVo);
		return "bs/boardList";
	}
	
	// 로그인 화면
	@RequestMapping("/login")
	public String login() {
		return "bs/login";
	}
	
	//회원가입 화면
	@RequestMapping("/joinMembership")
	public String joinMembership() {
		return "bs/joinMembership";
	}
	
	// 게시글 상세보기
	@RequestMapping("/boardView")
	public String boardView(Model model , BoardVo bVo) {
		
		List<BoardVo> boardView = sqlSession.selectList("com.inus.board.getView",bVo);
		model.addAttribute("boardView",boardView);
		sqlSession.update("com.inus.board.boardCount",bVo);
		return "bs/boardView";
	}
	
	// 게시글 작성화면 보여주기
	@RequestMapping("/boardWrite")
	public String boardWrite(Model model, BoardVo bVo) {
		model.addAttribute("inus_userName",bVo.getInus_userName());
		return "bs/boardWrite";
	}
	
	// 게시글 등록
	@RequestMapping("/boardInsert")
	public String boardInsert(BoardVo bVo) {
		sqlSession.insert("com.inus.board.boardInsert",bVo);
		return "redirect:boardList";
	}
	
	
	// 게시글 수정화면 보여주기
	@RequestMapping("/boardUpdate")
	public String boardUpdate(Model model, BoardVo bVo) {
		List<BoardVo> boardUpdate = sqlSession.selectList("com.inus.board.getView",bVo);
		model.addAttribute("boardUpdate",boardUpdate);
		return "bs/boardUpdate";
	}
	
	// 게시글 수정
	@RequestMapping("/updateBoard")
	public String updateBoard(Model model, BoardVo bVo) {
		List<BoardVo> updateBoard = sqlSession.selectList("com.inus.board.getView",bVo);
		sqlSession.update("com.inus.board.boardUpdate",bVo);
		model.addAttribute("updateBoard",updateBoard);
		return "forward:boardView";
	}
	
	// 게시글 삭제
	@RequestMapping("/boardDelete")
	public String boardDelete(BoardVo bVo) {
		sqlSession.delete("com.inus.board.boardDelete",bVo);
		return "bs/boardList";
	}
	
	
}
