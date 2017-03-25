<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"
%>
    
<% 
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String jumin1 = request.getParameter("jumin1");
String jumin2 = request.getParameter("jumin2");
String addr = request.getParameter("addr");
String birth1 = request.getParameter("birth1");
String birth2 = request.getParameter("birth2");
String phone1 = request.getParameter("phone1");
String phone2 = request.getParameter("phone2");
String phone3 = request.getParameter("phone3");
String gender = request.getParameter("gender");
String email1 = request.getParameter("email1");
String email2 = request.getParameter("email2");
String emailox = request.getParameter("emailox");

Class.forName("oracle.jdbc.driver.OracleDriver");
String path="jdbc:oracle:thin:@220.86.7.141:1521:orcl";
Connection conn = 
		DriverManager.getConnection(path,"jsp08","jsp08"); 
		out.println(conn);
String sql = "insert into joinex values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, jumin1);
			pstmt.setString(5, jumin2);
			pstmt.setString(6, addr);
			pstmt.setString(7, birth1);
			pstmt.setString(8, birth2);
			pstmt.setString(9, phone1);
			pstmt.setString(10, phone2);
			pstmt.setString(11, phone3);
			pstmt.setString(12, gender);
			pstmt.setString(13, email1);
			pstmt.setString(14, email2);
			pstmt.setString(15, emailox);
pstmt.executeUpdate();
out.println("insert success");
pstmt.close();
conn.close();	
%>
	