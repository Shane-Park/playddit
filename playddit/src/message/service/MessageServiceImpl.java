package message.service;

import java.sql.SQLException;
import java.util.List;

import message.dao.IMessageDao;
import message.dao.MessageDaoImpl;
import message.vo.MessageVO;

public class MessageServiceImpl implements IMessageService{
	private IMessageDao dao;
	private static IMessageService service;
	
	public MessageServiceImpl() {
		dao = MessageDaoImpl.getDao();
	}
	
	public static IMessageService getService() {
		if(service == null) service = new MessageServiceImpl();
		
		return service;
	}
		
	@Override
	public List<MessageVO> getMessage(String user, String audience) {
		try {
			return dao.getMessage(user, audience);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
