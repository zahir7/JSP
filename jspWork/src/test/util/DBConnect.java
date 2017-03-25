package test.util;

import java.sql.Connection;
import java.sql.DriverManager;

/*
 * ����Ŭ DB �����ؼ� Connection ��ü�� �������ִ� Ŭ���� �����
 */
public class DBConnect {
	private Connection con;
	//�����ڿ��� Connection ��ü�� ���´�.
	public DBConnect(){
		try{
			//����Ŭ ����̹� �ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//URL ����
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			//������ ������ Connection ��ü ������
			con = DriverManager.getConnection(url, "scott", "tiger");
			System.out.println("����Ŭ DB ���� ����!");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//Connection ��ü�� �����ϴ� �޼ҵ�
	public Connection getConn(){
		return con;
	}
}















