package util;

import java.io.File;

/**
 * 파일 입출력 관련된 모든 정보를 저장하고 , 관련 메소드들을 만들어 놓을 클래스 입니다.
 * @author shane
 *
 */
public class FileUtil {
	
	public static final String WIN_PROJECT_PATH = "D:\\A_TeachingMaterial\\playddit\\playddit";
	public static final String MAC_PROJECT_PATH = System.getProperty("user.home")+"/Documents/GitHub/playddit/playddit";
	public static final String SEP = File.separator;
	
	/**
	 * OS를 확인 하고 나서 mac 혹은 win 으로 확인한 운영체제의 이름을 반환하는 메서드
	 * @return
	 */
	public static String getOSName() {
		return System.getProperty("os.name").substring(0, 3).toLowerCase();
	}
	
	/**
	 * 프로젝트가 저장된 경로를 반환해주는 메서드
	 * @return
	 */
	public static String getProjectPath() {
		switch(getOSName()) {
		case "mac":
			return MAC_PROJECT_PATH;
		case "win":
			return WIN_PROJECT_PATH;
		default:
			return WIN_PROJECT_PATH;
		}
	}
	
	/**
	 * 프로필 사진을 저장할 폴더를 찾아내 반환해주는 메서드
	 * @return
	 */
	public static String getProfilePath() {
		return getProjectPath() + SEP + "WebContent"+SEP+"images"+SEP+"profile";
	}
	
}

