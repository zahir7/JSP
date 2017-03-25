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
 * 싱글톤  DAO 객체 만들기
 */
public class MemDAO {
	//1.맴버필드를 static 으로 선언한다.
	private static MemDAO dao;
	//2.생성자를 private 로 선언해서 외부에서 객체를 생성하지 못하도록한다.
	private MemDAO(){}
	//3.자신의 참조값을 리턴하는 메소드를 만든다. null 이라면 생성해서 리턴
	public static MemDAO getInstance(){
		if(dao==null){
			dao=new MemDAO();
		}
		return dao;
	}
	//회원정보를 리턴하는 메소드
	public ArrayList<MemDTO> getList(){
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		//회원정보를 담을 객체 생성하기.
		ArrayList<MemDTO> list=new ArrayList<MemDTO>();
		try{
			//Connection 객체 얻어오기.
			con=new DbcpBean().getConn();
			stmt=con.createStatement();
			String sql="SELECT * FROM member";
			//SQL 문 실행하고 결과 값을 ResultSet 으로 받기
			rs=stmt.executeQuery(sql);
			//반복문 돌면서 list 에 자료 담기
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
	//회원정보를 DB 에 저장하는 메소드
	public boolean insert(MemDTO dto){
		Connection con=null;
		PreparedStatement pstmt=null;
		int result=0;
		try{
			//Connection 객체 얻어오기
			con=new DbcpBean().getConn();
			//실행할 SQL 문장
			String sql="INSERT INTO member VALUES(?,?,?)";
			pstmt=con.prepareStatement(sql);
			//dto 객체에 담겨있는 정보를 pstmt 객체에 연결하기
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getAddr());
			//SQL 문 실행하기
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
			return true; //저장성공!
		else 
			return false; //저장실패!
		
	}//insert
	//회원 을 삭제하는 메소드
	public boolean delete(int num){
		Connection con=null;
		PreparedStatement pstmt=null;
		boolean isSuccess=false;
		try{
			//Conntection 객체 얻어오기
			con=new DbcpBean().getConn();
			String sql="DELETE FROM member WHERE num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.execute();
			//성공이라면 여기 까지 실행순서가 넘어온다.
			isSuccess=true;
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(Exception e){}
		}
		//성공여부를 boolean 으로 리턴한다.
		return isSuccess;
	}
	//회원 한명의 정보를 리턴하는 메소드
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
	//회원정보 수정하는 메소드
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
		//성공 여부를 리턴한다.
		return isSuccess;
	}
}


















