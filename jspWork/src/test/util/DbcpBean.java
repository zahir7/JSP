package test.util;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/*
 * Connection 을 관리하는 DbcpBean 클래스
 */
public class DbcpBean {
	private Connection conn;
	//생성자
	public DbcpBean(){
		try{
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			//Connection  객체 얻어오기
			conn = ds.getConnection();
			System.out.println("DbcpBean 객체 생성성공!");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//Connection 객체를 리턴하는 메소드
	public Connection getConn(){
		
		return conn;
	}
}








