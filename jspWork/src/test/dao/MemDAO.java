package test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import test.dto.MemDTO;
import test.util.DbcpBean;

/*
 * �̱���  DAO ��ü �����
 */
public class MemDAO {
	//1.�ɹ��ʵ带 static ���� �����Ѵ�.
	private static MemDAO dao;
	//2.�����ڸ� private �� �����ؼ� �ܺο��� ��ü�� �������� ���ϵ����Ѵ�.
	private MemDAO(){}
	//3.�ڽ��� �������� �����ϴ� �޼ҵ带 �����. null �̶�� �����ؼ� ����
	public static MemDAO getInstance(){
		if(dao==null){
			dao=new MemDAO();
		}
		return dao;
	}
	//ȸ�������� �����ϴ� �޼ҵ�
	public ArrayList<MemDTO> getList(){
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		//ȸ�������� ���� ��ü �����ϱ�.
		ArrayList<MemDTO> list=new ArrayList<MemDTO>();
		try{
			//Connection ��ü ������.
			con=new DbcpBean().getConn();
			stmt=con.createStatement();
			String sql="SELECT * FROM member";
			//SQL �� �����ϰ� ��� ���� ResultSet ���� �ޱ�
			rs=stmt.executeQuery(sql);
			//�ݺ��� ���鼭 list �� �ڷ� ���
			while(rs.next()){
				int num=rs.getInt("num");
				String name=rs.getString("name");
				String addr=rs.getString("addr");
				MemDTO dto=new MemDTO(num, name, addr);
				list.add(dto);
			}
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(con!=null)con.close();
			}catch(Exception e){}
		}
		
		return list;
	}
	//ȸ�������� DB �� �����ϴ� �޼ҵ�
	public boolean insert(MemDTO dto){
		Connection con=null;
		PreparedStatement pstmt=null;
		int result=0;
		try{
			//Connection ��ü ������
			con=new DbcpBean().getConn();
			//������ SQL ����
			String sql="INSERT INTO member VALUES(?,?,?)";
			pstmt=con.prepareStatement(sql);
			//dto ��ü�� ����ִ� ������ pstmt ��ü�� �����ϱ�
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getAddr());
			//SQL �� �����ϱ�
			result=pstmt.executeUpdate();
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){}
		}
		if(result>0)
			return true; //���强��!
		else 
			return false; //�������!
		
	}//insert
	//ȸ�� �� �����ϴ� �޼ҵ�
	public boolean delete(int num){
		Connection con=null;
		PreparedStatement pstmt=null;
		boolean isSuccess=false;
		try{
			//Conntection ��ü ������
			con=new DbcpBean().getConn();
			String sql="DELETE FROM member WHERE num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.execute();
			//�����̶�� ���� ���� ��������� �Ѿ�´�.
			isSuccess=true;
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(Exception e){}
		}
		//�������θ� boolean ���� �����Ѵ�.
		return isSuccess;
	}
	//ȸ�� �Ѹ��� ������ �����ϴ� �޼ҵ�
	public MemDTO getData(int num){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			con=new DbcpBean().getConn();
			String sql="SELECT * FROM member WHERE num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			rs.next();
			MemDTO dto=new MemDTO();
			dto.setNum(rs.getInt("num"));
			dto.setName(rs.getString("name"));
			dto.setAddr(rs.getString("addr"));
			return dto;
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){}
		}
		return null;
	}
	//ȸ������ �����ϴ� �޼ҵ�
	public boolean update(MemDTO dto){
		Connection con=null;
		PreparedStatement pstmt=null;
		boolean isSuccess=false;
		try{
			con=new DbcpBean().getConn();
			String sql="UPDATE member SET name=?,addr=? WHERE num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			pstmt.setInt(3, dto.getNum());
			pstmt.execute();
			isSuccess=true;
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){}
		}
		//���� ���θ� �����Ѵ�.
		return isSuccess;
	}
}


















