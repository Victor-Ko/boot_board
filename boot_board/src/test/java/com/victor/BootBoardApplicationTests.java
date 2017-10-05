package com.victor;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.victor.board.dao.BoardDao;
import com.victor.board.domain.BoardVO;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BootBoardApplicationTests {

	@Autowired
	DataSource ds;
	
	@Autowired
	SqlSessionFactory sqlSession;
	
	@Autowired
	BoardDao boardDao;
	
	@Test
	public void contextLoads() {
	}
	
	/*@Test
	 public void testConnection() throws Exception{ //작성
        System.out.println("ds : "+ds);
        
        Connection con = ds.getConnection(); //ds(DataSource)에서 Connection을 얻어내고
        
        System.out.println("con : "+con); //확인 후
        
        con.close(); //close
    }
	
	@Test
    public void testSqlSession() throws Exception{//작성
        System.out.println("sqlSession : "+sqlSession);
    }*/

	@Test
    public void testMapper() throws Exception{//작성
        
        BoardVO vo = new BoardVO();
        
        vo.setBoard_title("제목입니다.");
        vo.setBoard_contents("내용입니다.");
        vo.setUser_id("작성자입니다.");
        
        boardDao.boardInsert(vo);
        
    }

}
