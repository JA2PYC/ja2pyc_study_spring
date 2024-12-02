package org.ja2pyc.mapper;

import static org.junit.Assert.assertNotNull;

import org.ja2pyc.domain.BoardVO;
import org.ja2pyc.service.BoardService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class BoardServiceTests {
	@Setter(onMethod_ = @Autowired)
	private BoardService service;

	@Autowired
	private ApplicationContext applicationContext;

	// @Test
	public void testBeans() {
		for (String beanName : applicationContext.getBeanDefinitionNames()) {
			System.out.println(beanName);
		}
	}

	// @Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}

	// @Test
	public void testRegister() {
		BoardVO board = new BoardVO();
		board.setTblBoardTitle("제목 register 1");
		board.setTblBoardContent("내용 register 1");
		board.setTblBoardWriter("작성자 register 1");
		
		service.register(board);
		log.info("Board : " + board);
		log.info("게시물 번호" + board.getTblBoardId());
	}
	
	// @Test
	public void testGetList() {
		service.getList().forEach(board -> log.info("Board : " + board));
		
	}
	
	// @Test
	public void testGet () {
		log.info(service.get(1));
	}
	
	// @Test
	public void testDelete() {
		log.info("Delete Result : " + service.remove(7));
	}
	
	@Test
	public void testUpdate() {
		BoardVO board = service.get(8);
		if(board == null) {
			return;
		}
		board.setTblBoardTitle("제목 testUpdate");
		board.setTblBoardContent("내용 testUpdate");
		log.info("Update Result " + service.modify(board));
	}
	
}
