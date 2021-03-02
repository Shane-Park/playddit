package feed.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import config.SqlMapClientFactory;
import feed.vo.ComVO;
import feed.vo.FeedVO;

public class FeedDaoImpl implements IFeedDao {
	
	private SqlMapClient client;
	private static IFeedDao dao;
	
//	1. SqlMapClient객체 얻기
//	생성자를 생성한 후 객체를 얻어온다.
	

	private FeedDaoImpl() {
		client = SqlMapClientFactory.getClient();
		
	}
//	2.service에서 사용될 자신의 객체를 생성하기
//	2-1.자신의 객체를 리턴하는 getDao()메서드 정의
	public static IFeedDao getDao() {
		if(dao == null) dao = new FeedDaoImpl();
		return dao;
		
	}

	
	
	@Override
	public List<FeedVO> getFeed(String user_id) throws SQLException {
		// TODO Auto-generated method stub
		return (List<FeedVO>)client.queryForList("feed.getFeed",user_id);
	}
	@Override
	public List<ComVO> getCom(int feed_no) throws SQLException {
		// TODO Auto-generated method stub
		return (List<ComVO>)client.queryForList("feed.getCom",feed_no);
	}

}