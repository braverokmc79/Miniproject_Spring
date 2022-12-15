package com.ict.minispring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.minispring.vo.CinemaVo;

@Repository
public class CinemaDaoImpl implements CinemaDao {

	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession)  throws Exception{
		this.sqlSession = sqlSession;
	}

	@Override
	public List<CinemaVo> selectList()  throws Exception{
		return sqlSession.selectList("cinema.cinema_list");
	}

	@Override
	public CinemaVo selectOne(int c_idx)  throws Exception{
		return sqlSession.selectOne("cinema.cinema_one", c_idx);
	}

	@Override
	public int update(CinemaVo vo)  throws Exception{
		return sqlSession.update("cinema.cinema_update", vo);
	}

	@Override
	public int delete(int c_idx) throws Exception {
		return sqlSession.delete("cinema.cinema_delete", c_idx);
	}

	
	@Override
	public int insert(CinemaVo vo) throws Exception {	
		return sqlSession.insert("cinema.cinema_insert", vo);
	}

	
	@Override
	public int update_filename(CinemaVo vo)  throws Exception{
		return sqlSession.update("cinema.cinema_update_filename", vo);
	}

}
