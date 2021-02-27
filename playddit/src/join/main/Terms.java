package join.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import join.service.IJoinservice;
import join.service.JoinServiceImpl;
import join.vo.TermsVO;
import web.IAction;

public class Terms implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		IJoinservice service = JoinServiceImpl.getService();
		
	
		List<TermsVO> list = service.showTerm();

		request.setAttribute("terms", list);

		return "/join/Terms.jsp";

	}

}
