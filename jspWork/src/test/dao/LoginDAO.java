package test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import test.dto.LoginDTO;
import test.util.DbcpBean;

/*
 * DAO 는 싱글톤으로 만든다.
 */
public class LoginDAO {
	//1.자기자신의 참조값을 private static 으로 선언
	private static LoginDAO dao;
	//2.생성자를 private 로 만들어서 외부에서 객체 생성하지 못하도록
	private LoginDAO(){}
	//3.자신의 객체의 참조값을 리턴하는 static 메소드를 만든다.
	public static LoginDAO getInstance(){
		//4.처음 호출되면 dao 가 null 값이 들어가있으므로 객체를 생성해준다.
		if(dao == null){
			dao=new LoginDAO();
		}
		return dao;
	}
	//회원의 id , pwd 를 등록하는 메소드
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
			isSuccess=true; //여기 까지 실행순서가 넘어오면 성공!
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
	//회원인지 아닌지 판별해서 boolean 값을 리턴하는 메소드
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
			//SQL 문 실행하고 결과 값을  rs 에 담는다.
			rs=pstmt.executeQuery();
			//입력한 정보가 맞다면 SELECT 된 row 가 존재 할것이다.
			if(rs.next()){
				//여기가 실행이 된다면 rs 객체에 row 가 있다는 것이므로 회원이 맞다.
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
		return isMember; // 회원인지 여부를 리턴한다.
	}
}




















