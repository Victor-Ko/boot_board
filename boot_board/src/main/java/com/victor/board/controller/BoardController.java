package com.victor.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.victor.board.dao.BoardDao;
import com.victor.board.domain.BoardVO;

@Controller
public class BoardController {

	@Autowired
	BoardDao boardDao;
	
	@RequestMapping(value="/board/boardInsert")
	public String boardInsert()throws Exception{
		return "board/boardInsert";
	}
	
	@RequestMapping(value="/board/insertAction")
	public String insertAction(@ModelAttribute("BoardVO") BoardVO board)throws Exception{
		boardDao.boardInsert(board);
		
		return "redirect:/board/boardList";
	}
	
	@RequestMapping(value="/board/boardList")
	public ModelAndView boardList()throws Exception{
		List<BoardVO> boardList = boardDao.boardSelect();
		
		return new ModelAndView("board/boardList","list",boardList);
	}
	
	@RequestMapping(value="/board/boardDetail")
	public ModelAndView boardDetail(@RequestParam(value="seq")int seq)throws Exception{
		BoardVO boardDetail = boardDao.boardDetail(seq);
		boardDao.hitUpdate(seq);
		
		return new ModelAndView("board/boardDetail", "board", boardDetail);
	}
	
	@RequestMapping(value="/board/boardUpdate")
	public ModelAndView boardUpdate(@RequestParam(value="seq")int seq)throws Exception{
		BoardVO boardDetail = boardDao.boardDetail(seq);
		
		return new ModelAndView("board/boardUpdate", "board", boardDetail);
	}
	
	@RequestMapping(value="/board/updateAction")
	public String updateAction(@ModelAttribute("BoardVO") BoardVO board)throws Exception{
		boardDao.boardUpdate(board);
		
		return "redirect:/board/boardDetail?seq="+board.getBoard_seq();
	}
	
	@RequestMapping(value="/board/boardDelete")
	public String boardDelete(@RequestParam(value="seq")int seq)throws Exception{
		boardDao.boardDelete(seq);
		
		return "redirect:/board/boardList";
	}
}
