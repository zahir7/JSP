package test.util;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/*
 * Connection �� �����ϴ� DbcpBean Ŭ����
 */
public class DbcpBean {
	private Connection conn;
	//������
	public DbcpBean(){
		try{
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			//Connection  ��ü ������
			conn = ds.getConnection();
			System.out.println("DbcpBean ��ü ��������!");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//Connection ��ü�� �����ϴ� �޼ҵ�
	public Connection getConn(){
		
		return conn;
	}
}








