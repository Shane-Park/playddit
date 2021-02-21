package users.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import users.service.IUsersService;
import users.service.UsersServiceImpl;
import web.IAction;

public class IdCheck implements IAction {
	

	@Override
	public boolean isRedirect() {
		return false;
	}


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id = request.getParameter("id");
		IUsersService service = UsersServiceImpl.getService();
		String result = service.selectById(user_id);
		request.setAttribute("resultvalue", result);
		
		return "/users/idCheck.jsp";
	}

}