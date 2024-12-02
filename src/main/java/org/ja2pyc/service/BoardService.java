package org.ja2pyc.service;

import java.util.List;

import org.ja2pyc.domain.BoardVO;

public interface BoardService {
	public void register(BoardVO board);
	
	public BoardVO get (int tblBoardId);
	
	public boolean modify (BoardVO board);
	
	public boolean remove(int tblBoardId);
	
	public List<BoardVO> getList();
}