package org.ja2pyc.service;

import java.util.List;

import org.ja2pyc.domain.BoardVO;
import org.ja2pyc.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;

	@Override
	public void register(BoardVO board) {
		// TODO Auto-generated method stub
		log.info("BoardServiceImpl : register" + board);
		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO get(int tblBoardId) {
		// TODO Auto-generated method stub
		log.info("BoardServiceImpl : get " + tblBoardId);

		return mapper.read(tblBoardId);
	}

	@Override
	public boolean modify(BoardVO board) {
		// TODO Auto-generated method stub
		System.out.println("--------------------Modify Service--------------------");
		log.info("BoardServiceImpl : modify" + board);
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(int tblBoardId) {
		// TODO Auto-generated method stub
		log.info("BoardServiceImpl : remove " + tblBoardId);
		return mapper.delete(tblBoardId) == 1;
	}

	@Override
	public List<BoardVO> getList() {
		// TODO Auto-generated method stub
		log.info("BoardServiceImpl : getList");

		return mapper.getList();
	}

}
