<%@ page contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
	import="java.sql.*"
%>
    
<%
	//1단계 드라이버 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");

	//2단계 DB 연결
	String path="jdbc:oracle:thin:@220.86.7.141:1521:orcl";
	Connection conn = 
			DriverManager.getConnection(path,"jsp08","jsp08"); // ip, 연결할 계정, pw
			out.println(conn);
			
	//3단계 SQL 작성
	PreparedStatement pstmt = 
		conn.prepareStatement("select * from joinex");
	
	//4단계 실행
	ResultSet rs = pstmt.executeQuery();
	
	//5단계 추출
	while(rs.next()){
		String id = rs.getString("id");
		String pw = rs.getString("pw");
		String name = rs.getString("name");
		String jumin1 = rs.getString("jumin1");
		String jumin2 = rs.getString("jumin2");
		String addr = rs.getString("addr");
		String birth1 = rs.getString("birth1");
		String birth2 = rs.getString("birth2");
		String phone1 = rs.getString("phone1");
		String phone2 = rs.getString("phone2");
		String phone3 = rs.getString("phone3");
		String gender = rs.getString("gender");
		String email1 = rs.getString("email1");
		String email2 = rs.getString("email2");
		String emailox = rs.getString("emailox");
		Timestamp reg = rs.getTimestamp("reg");
		%> <%=id %> <%=pw %> <%=name %> <%=jumin1 %> <%=jumin2 %> <%=addr %> 
		<%=birth1%> <%=birth2%> <%=phone1 %> <%=phone2 %> <%=phone3 %> <%=gender %> <%=email1 %> <%=email2 %> <%=emailox %> <%=reg %>  <br />
		<%}
		rs.close();
		pstmt.close();
		conn.close();
%>

