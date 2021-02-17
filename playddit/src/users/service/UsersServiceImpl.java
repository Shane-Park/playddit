package users.service;

import java.sql.SQLException;
import java.util.List;

import users.dao.IUsersDao;
import users.dao.UsersDaoImpl;
import users.vo.UsersVO;

public class UsersServiceImpl implements IUsersService {
	private IUsersDao dao;
	private static UsersServiceImpl service;
	
	
	public UsersServiceImpl() {
		dao = UsersDaoImpl.getDao();
	}
	
	public static UsersServiceImpl getService() {
		if(service == null) service = new UsersServiceImpl();
		
		return service;
	}
	

	@Override
	public List<UsersVO> getAllUsers() {
		return dao.getAllUsers();
	}

	@Override
	public String selectById(String user_id) {
		String resId = null;
		
		try {
			resId = dao.selectById(user_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resId;
	}

	/**
	 * 팔로잉 목록 출력
	 */
	@Override
	public List<UsersVO> followingList(String user_id) {
		List<UsersVO> following = null;
		
		try {
			following = dao.followingList(user_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return following;
	}

	/**
	 * 아이디 비밀번호 일치 여부
	 */
	@Override
	public UsersVO match(String user_id,String user_pw) {
		UsersVO vo = null;
		try {
			vo = dao.match(user_id, user_pw);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
	
	
	
	
}
