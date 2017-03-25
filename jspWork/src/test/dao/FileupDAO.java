package test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import test.dto.FileupDTO;
import test.util.DbcpBean;

public class FileupDAO {
	//�ڱ��ڽ��� ��ü�� static ���� �����Ѵ�.
	private static FileupDAO dao;
	//�ܺο��� ��ü ������ ���� ���ϵ��� �������� ���� �����ڸ� private ���Ѵ�.
	private FileupDAO(){}
	//�ڽ��� ��ü�� �������� �����ϴ� �޼ҵ带 �����Ѵ�.
	public static FileupDAO getInstance(){
		if( dao == null){
			dao=new FileupDAO();
			System.out.println("dao ��ü�� �����Ǿ����״�.");
		}
		return dao;
	}
	Connection con;
	//���۵� ������ ������ �����ϴ� �޼ҵ�
	public boolean insert(FileupDTO dto){
		//�ʿ��� ��ü �ʱ�ȭ �ϱ�
		PreparedStatement pstmt=null;
		//���强������
		boolean isSuccess = false;
		
		try{
			//Connection ��ü ������
			con=new DbcpBean().getConn();
			//SQL ���� �غ��ϱ�
			String sql="INSERT INTO fileup VALUES" +
						"(fileup_seq.nextval, ?, ?, ?, ?, ?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getOrgFileName());
			pstmt.setString(5, dto.getSaveFileName());
			//sql�� �����ϱ�
			pstmt.executeUpdate();
			isSuccess=true; //���强��
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){
				se.printStackTrace();
			}
		}//try
		return isSuccess;
	}// insert() 
	
	//��ü ���� ��� ������ �޼ҵ�
	public ArrayList<FileupDTO> getList(){
		//�ʿ��� ��ü �ʱ�ȭ �ϱ�
		Statement stmt=null;
		ResultSet rs=null;
		try{
			con=new DbcpBean().getConn();
			String sql="SELECT * FROM fileup";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			//DTO ��ü�� ���� ArrayList<FileupDTO> ��ü �����ϱ�
			ArrayList<FileupDTO> list=new ArrayList<FileupDTO>();
			//�ݺ��� ���鼭 rs ��ü�� ��� ���� ������
			while(rs.next()){
				int num=rs.getInt("num");
				String writer=rs.getString("writer");
				String title=rs.getString("title");
				String content=rs.getString("content");
				String orgFileName=rs.getString("orgFileName");
				String saveFileName=rs.getString("saveFileName");
				FileupDTO dto=new FileupDTO(num, writer, title, content,
									orgFileName, saveFileName);
				//������ dto ��ü�� �迭�� ���
				list.add(dto);
			}//while
			//������ ��� �����ϱ�
			return list;
		}catch(SQLException se){
			se.printStackTrace();
			return null;
		}finally{
			try{
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){
				se.printStackTrace();
			}
		}//try
	}//getList()
	
	//DB���� ���Ϲ�ȣ�� �ش��ϴ� ���� ������
	public FileupDTO getData(int num){
		//�ʿ��� ��ü �ʱ�ȭ �ϱ�
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			con=new DbcpBean().getConn();
			String sql="SELECT * FROM fileup WHERE num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			rs.next();
			String orgFileName=rs.getString("orgFileName");
			String saveFileName=rs.getString("saveFileName");
			//dto ��ü �����ϱ�.
			FileupDTO dto=new FileupDTO(0,null,null,null,
									orgFileName,saveFileName);
			//��ü �����ϱ�
			return dto;
		}catch(SQLException se){
			se.printStackTrace();
			return null;
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){
				se.printStackTrace();
			}
		}//try
	}//getData()
	
	//���������� ����� �޼ҵ�
	public void delete(int num){
		PreparedStatement pstmt=null;
		try{
			con=new DbcpBean().getConn();
			String sql="DELETE FROM fileup WHERE num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.execute();
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){
				se.printStackTrace();
			}
		}//try
	}//delete()
}
