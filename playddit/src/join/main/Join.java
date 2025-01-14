package join.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import join.service.IJoinservice;
import join.service.JoinServiceImpl;
import login.service.ILoginService;
import login.service.LoginServiceImpl;
import login.vo.ProfileVO;
import users.vo.UsersVO;
import web.IAction;

public class Join implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		  // 세션 값 가져오기
		  HttpSession session = request.getSession(); 
		  UsersVO vo = (UsersVO)session.getAttribute("insertVo");
		  String mail = vo.getUser_id();

		  
		  IJoinservice service = JoinServiceImpl.getService();
		  int insert = service.insertUser(vo);
		  
		  if(insert == 1) {	// 가입에 성공하면 여기에서 세션에 로그인 처리한다.
				ILoginService loginService = LoginServiceImpl.getService();
				ProfileVO profile = loginService.loadProfile(mail);
				String profileJson = new Gson().toJson(profile);
				session.setAttribute("profile", profileJson);
		  }
		  
		  String insertJson = new Gson().toJson(insert);
		  
		  // 쿠키 값 가져오기
		  String pick1 = request.getParameter("pick1");
		  String pick2 = request.getParameter("pick2");
		  String pick3 = request.getParameter("pick3");
		  
		  
		  if("true".equals(pick1)) {
			  service.pickConInsert(4, mail);
		  }
		  
		  if("true".equals(pick2)) {
			  service.pickConInsert(5, mail);
		  }
		  if("true".equals(pick3)) {
			  service.pickConInsert(6, mail);
		  }		  
		  // 해당 데이터를 ajax로 보낸다.
		  response.setContentType("application/json; charset=UTF-8");
		  response.getWriter().write(insertJson);
		
		  return null;
	}

}
