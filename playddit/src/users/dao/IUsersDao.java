package users.dao;

import java.sql.SQLException;
import java.util.List;

import login.vo.ProfileVO;
import users.vo.FollowerVO;
import users.vo.GroupVO;
import users.vo.UsersVO;

public interface IUsersDao {
	public List<UsersVO> getAllUsers();
	
	// 아이디 중복검사
	public String selectById(String user_id) throws SQLException;
	
	// 닉네임 중복검사
	public String selectByNick(String user_nickname) throws SQLException;
	
	// 팔로잉 목록 출력
	public List<FollowerVO> followingList(String user_id) throws SQLException;
	
	// 팔로워 목록 출력
	public List<FollowerVO> followerList(String user_id) throws SQLException;
	
	// 소속 학급 출력
	public GroupVO getGroupInfo_class(String user_id) throws SQLException;
	
	// 팔로우 데이터 추가
	public int followUser(String follower, String followee) throws SQLException;
	
	// 팔로우 데이터 제거
	public int unfollowUser(String follower, String followee) throws SQLException;
	
	// 아이디 비밀번호 일치여부
	public UsersVO match(String user_id, String user_pw) throws SQLException;
	
	// 암호 변경하기
	public int setNewPass(String user_id, String password) throws SQLException;
	
	// 프로필 변경하기
	public int setUserPic(String user_id, String user_pic) throws SQLException;
	
	// 유저 등급 변경하기
	public int setUserRate(String user_id, int user_rating) throws SQLException;
	
	// 학급정보 변경하기
	public int setUserClass(String user_id, String class_id) throws SQLException;
	
	// 학급 권한부여 권한자들 목록 불러오기
	public List<String> getRightHolders(String class_id) throws SQLException;
	
	// 특정 유저 정보 불러오기
	public ProfileVO loadSomeonesProfile(String user_id, String target_id) throws SQLException;
	
	// 인증확인을 위해 멤버 셀렉트 하기
	public UsersVO selectMemberForAuth(String user_id) throws SQLException;
}
	