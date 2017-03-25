package test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import test.dto.LoginDTO;
import test.util.DbcpBean;

/*
 * DAO �� �̱������� �����.
 */
public class LoginDAO {
	//1.�ڱ��ڽ��� �������� private static ���� ����
	private static LoginDAO dao;
	//2.�����ڸ� private �� ���� �ܺο��� ��ü �������� ���ϵ���
	private LoginDAO(){}
	//3.�ڽ��� ��ü�� �������� �����ϴ� static �޼ҵ带 �����.
	public static LoginDAO getInstance(){
		//4.ó�� ȣ��Ǹ� dao �� null ���� �������Ƿ� ��ü�� �������ش�.
		if(dao == null){
			dao=new LoginDAO();
		}
		return dao;
	}
	//ȸ���� id , pwd �� ����ϴ� �޼ҵ�
	public boolean insert(LoginDTO dto){
		Connection con=null;
		PreparedStatement pstmt=null;
		boolean isSuccess=false;
		try{
			con=new DbcpBean().getConn();
			String sql="INSERT INTO login VALUES(?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.execute();
			isSuccess=true; //���� ���� ��������� �Ѿ���� ����!
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){}
		}
		return isSuccess;
	}
	//ȸ������ �ƴ��� �Ǻ��ؼ� boolean ���� �����ϴ� �޼ҵ�
	public boolean isMember(LoginDTO dto){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		boolean isMember=false;
		try{
			con=new DbcpBean().getConn();
			String sql="SELECT * FROM login WHERE id=? AND pwd=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			//SQL �� �����ϰ� ��� ����  rs �� ��´�.
			rs=pstmt.executeQuery();
			//�Է��� ������ �´ٸ� SELECT �� row �� ���� �Ұ��̴�.
			if(rs.next()){
				//���Ⱑ ������ �ȴٸ� rs ��ü�� row �� �ִٴ� ���̹Ƿ� ȸ���� �´�.
				isMember=true;
			}
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){}
		}
		return isMember; // ȸ������ ���θ� �����Ѵ�.
	}
}




















