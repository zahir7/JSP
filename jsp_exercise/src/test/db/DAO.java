package test.db;
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
		pstmt = conn.prepareStatement("select * from test");
		rs = pstmt.executeQuery();
		while(rs.next()){
			DTO dto = new DTO();
			dto.setId(rs.getString("id"));
			dto.setPw(rs.getString("pw"));
			dto.setAge(rs.getInt("age")+"");
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
		String sql = "insert into test values(?,?,?,Sysdate)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getId());
		pstmt.setString(2, dto.getPw());
		int age = Integer.parseInt(dto.getAge());
		pstmt.setInt(3, age);
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
