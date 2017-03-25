package test.util;

import java.sql.Connection;
import java.sql.DriverManager;

/*
 * 오라클 DB 접속해서 Connection 객체를 리턴해주는 클래스 만들기
 */
public class DBConnect {
	private Connection con;
	//생성자에서 Connection 객체를 얻어온다.
	public DBConnect(){
		try{
			//오라클 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//URL 설정
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			//설정한 정보로 Connection 객체 얻어오기
			con = DriverManager.getConnection(url, "scott", "tiger");
			System.out.println("오라클 DB 접속 성공!");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//Connection 객체를 리턴하는 메소드
	public Connection getConn(){
		return con;
	}
}















