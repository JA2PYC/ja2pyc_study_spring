package org.ja2pyc.mapper;

import org.ja2pyc.domain.BoardVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class BoardMapperTests {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;

	// @Test
	public void testGetList() {
		mapper.getList().forEach(board -> log.info(board));
	}

	// @Test
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setTblBoardTitle("테스트 제목 1");
		board.setTblBoardContent("테스트 내용 1");
		board.setTblBoardWriter("테스트 작성자 1");

		mapper.insert(board);
		log.info(board);
	}

	// @Test
	public void testInsertSelectKey() {

	}

	// @Test
	public void testRead() {
		BoardVO board = mapper.read(4);
		log.info(board);
	}

	// @Test
	public void testDelete() {
		log.info("DELETE : " + mapper.delete(6));
	}

	@Test
	public void testUpdate() {
		BoardVO board = new BoardVO();
		board.setTblBoardId(7);
		board.setTblBoardTitle("수정 제목 2");
		board.setTblBoardContent("수정 내용 2");
		board.setTblBoardWriter("수정 작성자 2");

		int updateCount = mapper.update(board);
		log.info("UPDATE : " + updateCount);
	}
}
