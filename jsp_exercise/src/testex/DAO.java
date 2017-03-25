package testex;
import java.sql.*;  
import javax.sql.DataSource; 
import javax.naming.Context;
import javax.naming.InitialContext;
import java.util.*;

public class DAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	private Connection getConnection()throws Exception{
		 Context ctx=new InitialContext();
		 Context env=(Context)ctx.lookup("java:comp/env");
		 DataSource ds = (DataSource)env.lookup("jdbc/orcl");
		 return ds.getConnection();		
	}
	
public ArrayList<DTO> select(){	
	ArrayList<DTO> list = new ArrayList<DTO>();
	try{
		conn = getConnection();
		pstmt = conn.prepareStatement("select * from joinex");
		rs = pstmt.executeQuery();
		while(rs.next()){
			DTO dto = new DTO();
			dto.setId(rs.getString("id"));
			dto.setPw(rs.getString("pw"));
			dto.setName(rs.getString("name"));
			dto.setJumin1(rs.getString("jumin1"));
			dto.setJumin2(rs.getString("jumin2"));
			dto.setAddr(rs.getString("addr"));
			dto.setBirth1(rs.getString("birth1"));
			dto.setBirth2(rs.getString("birth2"));
			dto.setPhone1(rs.getString("phone1"));
			dto.setPhone2(rs.getString("phone2"));
			dto.setPhone3(rs.getString("phone3"));
			dto.setGender(rs.getString("gender"));
			dto.setEmail1(rs.getString("email1"));
			dto.setEmail2(rs.getString("email2"));
			dto.setEmailox(rs.getString("emailox"));
			dto.setReg(rs.getTimestamp("reg"));
			list.add(dto);
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
	try {rs.close();} catch (SQLException e){}
	try {pstmt.close();} catch (SQLException e){}
	try {conn.close();} catch (SQLException e){}		
	}
	return list;
}




public void insert(DTO dto){
	try{
		conn = getConnection();
		String sql = "insert into joinex values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,Sysdate)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getId());
		pstmt.setString(2, dto.getPw());
		pstmt.setString(3, dto.getName());
		pstmt.setString(4, dto.getJumin1());
		pstmt.setString(5, dto.getJumin2());
		pstmt.setString(6, dto.getAddr());
		pstmt.setString(7, dto.getBirth1());
		pstmt.setString(8, dto.getBirth2());
		pstmt.setString(9, dto.getPhone1());
		pstmt.setString(10, dto.getPhone2());
		pstmt.setString(11, dto.getPhone3());
		pstmt.setString(12, dto.getGender());
		pstmt.setString(13, dto.getEmail1());
		pstmt.setString(14, dto.getEmail2());
		pstmt.setString(15, dto.getEmailox());
		pstmt.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}finally {
		try {pstmt.close();} catch (SQLException e){}
		try {conn.close();} catch (SQLException e){}		
	}
}






public void update(){
}
public void delete(){	
}
}
