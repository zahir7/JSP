package ch11.logonex;
 
 import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.sql.*; 
import javax.naming.*;
 
 public class LogonDBBean {
    
 	private static LogonDBBean instance = new LogonDBBean();
    
    public static LogonDBBean getInstance() {
        return instance;
    }
    
    private LogonDBBean() {
    }
    
    private Connection getConnection() throws Exception {
      Context initCtx = new InitialContext();
      Context envCtx = (Context) initCtx.lookup("java:comp/env");
      DataSource ds = (DataSource)envCtx.lookup("jdbc/orcl");
      return ds.getConnection();
    }
 
    public void insertMember(LogonDataBean member) 
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"insert into joinex values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPw());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getJumin1());
            pstmt.setString(5, member.getJumin2());
            pstmt.setString(6, member.getAddr());
            pstmt.setString(7, member.getBirth1());
            pstmt.setString(8, member.getBirth2());
            pstmt.setString(9, member.getPhone1());
            pstmt.setString(10, member.getPhone2());
            pstmt.setString(11, member.getPhone3());
            pstmt.setString(12, member.getGender());
            pstmt.setString(13, member.getEmail1());
            pstmt.setString(14, member.getEmail2());
            pstmt.setString(15, member.getEmailox());
			pstmt.setTimestamp(16, member.getReg());
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
 
	public int userCheck(String id, String pw) 
	throws Exception {
		Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs= null;
        String dbpw="";
		int x=-1;
        
		try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"select pw from joinex where id = ?");
            pstmt.setString(1, id);
            rs= pstmt.executeQuery();

			if(rs.next()){
				dbpw= rs.getString("pw"); 
				if(dbpw.equals(pw))
					x= 1; //인증 성공
				else
					x= 0; //비밀번호 틀림
			}else
				x= -1;//해당 아이디 없음
			
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
	}

	public int confirmId(String id) 
	throws Exception {
		Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs= null;
        String dbpw="";
		int x=-1;
        
		try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"select id from joinex where id = ?");
            pstmt.setString(1, id);
            rs= pstmt.executeQuery();

			if(rs.next())
				x= 1; //해당 아이디 있음
			else
				x= -1;//해당 아이디 없음		
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
	}
	
	

    public LogonDataBean getMember(String id)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        LogonDataBean member=null;
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"select * from joinex where id = ?");
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new LogonDataBean();
                member.setId(rs.getString("id"));
                member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
                member.setJumin1(rs.getString("jumin1"));
                member.setJumin2(rs.getString("jumin2"));
                member.setAddr(rs.getString("addr"));
                member.setBirth1(rs.getString("birth1"));
                member.setBirth2(rs.getString("birth2"));
                member.setPhone1(rs.getString("phone1"));
                member.setPhone2(rs.getString("phone2"));
                member.setPhone3(rs.getString("phone3"));
                member.setGender(rs.getString("gender"));
                member.setEmail1(rs.getString("email1"));
                member.setEmail2(rs.getString("email2"));
				member.setEmailox(rs.getString("emailox"));
                member.setReg(rs.getTimestamp("reg"));     
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return member;
    }
    
    
    

    public List<LogonDataBean> getMember() throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        LogonDataBean member=null;
        List<LogonDataBean> list = new ArrayList<LogonDataBean>();
        try {
            conn = getConnection();
            pstmt = conn.prepareStatement(
            	"select * from joinex");
            rs = pstmt.executeQuery();
            while(rs.next()) {
            	member = new LogonDataBean();
            	member.setId(rs.getString("id"));
            	member.setName(rs.getString("name"));
            	member.setReg(rs.getTimestamp("reg"));
            	list.add(member);
            	
            }
  
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return list;
    }
    

    
    public void updateMember(LogonDataBean member)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
              "update joinex set pw=?,name=?,addr=?,phone1=?,phone2=?,phone3=?,email1=?,email2=?,emailox=? "+
              "where id=?");
            pstmt.setString(1, member.getPw());
            pstmt.setString(2, member.getName());
            pstmt.setString(3, member.getAddr());
            pstmt.setString(4, member.getPhone1());
            pstmt.setString(5, member.getPhone2());
            pstmt.setString(6, member.getPhone3());
            pstmt.setString(7, member.getEmail1());
            pstmt.setString(8, member.getEmail2());
            pstmt.setString(9, member.getEmailox());
            pstmt.setString(10, member.getId());
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    public int deleteMember(String id, String pw)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
        String dbpw="";
        int x=-1;
        try {
			conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select pw from joinex where id = ?");
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            
			if(rs.next()){
				dbpw= rs.getString("pw"); 
				if(dbpw.equals(pw)){
					pstmt = conn.prepareStatement(
            	      "delete from joinex where id=?");
                    pstmt.setString(1, id);
                    pstmt.executeUpdate();
					x= 1; //회원탈퇴 성공
				}else
					x= 0; //비밀번호 틀림
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }
 }
