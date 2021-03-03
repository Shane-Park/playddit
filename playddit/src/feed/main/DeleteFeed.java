package feed.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import feed.service.FeedServiceImpl;
import feed.service.IFeedService;
import login.vo.ProfileVO;
import web.IAction;

public class DeleteFeed implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 세션에서 프로필 정보 받아와서 유저 아이디 저장하기.
		HttpSession session = request.getSession();
		String profileJson = (String) session.getAttribute("profile");
		Gson gson = new Gson();
		ProfileVO profile = gson.fromJson(profileJson, ProfileVO.class);
		
		String id = profile.getUser_id();
		
		
		// 피드번호 받기
		int feedno = Integer.parseInt(request.getParameter("feedno"));
		
		
		
		IFeedService service = FeedServiceImpl.getService();
		
		 int result = service.deleteFeed(feedno);
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().write(String.valueOf(result));	
		
		return null;
	}

}
