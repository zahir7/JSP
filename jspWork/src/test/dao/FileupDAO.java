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
	//자기자신의 객체를 static 으로 선언한다.
	private static FileupDAO dao;
	//외부에서 객체 생성을 하지 못하도록 생성자의 접근 지정자를 private 로한다.
	private FileupDAO(){}
	//자신의 객체의 참조값을 리턴하는 메소드를 제공한다.
	public static FileupDAO getInstance(){
		if( dao == null){
			dao=new FileupDAO();
			System.out.println("dao 객체가 생성되었습네다.");
		}
		return dao;
	}
	Connection con;
	//전송된 파일의 정보를 저장하는 메소드
	public boolean insert(FileupDTO dto){
		//필요한 객체 초기화 하기
		PreparedStatement pstmt=null;
		//저장성공여부
		boolean isSuccess = false;
		
		try{
			//Connection 객체 얻어오기
			con=new DbcpBean().getConn();
			//SQL 문장 준비하기
			String sql="INSERT INTO fileup VALUES" +
						"(fileup_seq.nextval, ?, ?, ?, ?, ?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getOrgFileName());
			pstmt.setString(5, dto.getSaveFileName());
			//sql문 실행하기
			pstmt.executeUpdate();
			isSuccess=true; //저장성공
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
	
	//전체 파일 목록 얻어오는 메소드
	public ArrayList<FileupDTO> getList(){
		//필요한 객체 초기화 하기
		Statement stmt=null;
		ResultSet rs=null;
		try{
			con=new DbcpBean().getConn();
			String sql="SELECT * FROM fileup";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			//DTO 객체를 담을 ArrayList<FileupDTO> 객체 생성하기
			ArrayList<FileupDTO> list=new ArrayList<FileupDTO>();
			//반복문 돌면서 rs 객체에 담긴 내용 빼오기
			while(rs.next()){
				int num=rs.getInt("num");
				String writer=rs.getString("writer");
				String title=rs.getString("title");
				String content=rs.getString("content");
				String orgFileName=rs.getString("orgFileName");
				String saveFileName=rs.getString("saveFileName");
				FileupDTO dto=new FileupDTO(num, writer, title, content,
									orgFileName, saveFileName);
				//생성한 dto 객체를 배열에 담기
				list.add(dto);
			}//while
			//생성한 목록 리턴하기
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
	
	//DB에서 파일번호에 해당하는 정보 얻어오기
	public FileupDTO getData(int num){
		//필요한 객체 초기화 하기
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
			//dto 객체 생성하기.
			FileupDTO dto=new FileupDTO(0,null,null,null,
									orgFileName,saveFileName);
			//객체 리턴하기
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
	
	//파일정보를 지우는 메소드
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
