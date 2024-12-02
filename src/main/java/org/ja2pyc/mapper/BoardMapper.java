package org.ja2pyc.mapper;

import java.util.List;

import org.ja2pyc.domain.BoardVO;

public interface BoardMapper {
	// @Select("SELECT * FROM tbl_board LIMIT 5")
	public List<BoardVO> getList();

	public void insert(BoardVO board);

	public void insertSelectKey(BoardVO board);

	public BoardVO read(int tblBoardId);
	
	public int delete(int tblBoardId);
	
	public int update(BoardVO board);
}
