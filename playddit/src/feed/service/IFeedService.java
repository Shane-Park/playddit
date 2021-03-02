package feed.service;

import java.sql.SQLException;
import java.util.List;

import feed.vo.ComVO;
import feed.vo.FeedVO;

public interface IFeedService {

	// 내피드 리스트로 불러오기
	public List<FeedVO> getFeed(String user_id);
	
	// 댓글 목록 불러오기
	public List<ComVO> getCom(int feed_no);

}
