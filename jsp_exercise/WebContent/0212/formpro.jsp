<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"
%>
    
    <% request.setCharacterEncoding("euc-kr"); %> 
        
    <jsp:useBean class="test.bean.Dto" id="dto" />
    <jsp:setProperty name="dto" property="*" />
    
    <font size="5">
    	아이디 => <jsp:getProperty name="dto" property="id" /> <br />
    	비밀번호 => <jsp:getProperty name="dto" property="password" /> <br />
    	이름 => <jsp:getProperty name="dto" property="name" /> <br />
    	주민등록번호 => <jsp:getProperty name="dto" property="jumin1" /> -
    				<jsp:getProperty name="dto" property="jumin2" /> <br /> 
    	주소  => <jsp:getProperty name="dto" property="add" /> <br />
    	생년월일 => <jsp:getProperty name="dto" property="birth" /> 
    			  <jsp:getProperty name="dto" property="birth1" /> <br />
    	전화번호 => <jsp:getProperty name="dto" property="phone" /> -
    			 <jsp:getProperty name="dto" property="phone2" />  - 
    			 <jsp:getProperty name="dto" property="phone3" /> <br />
    	성별 => <jsp:getProperty name="dto" property="gender" /> <br />
    	e-mail => <jsp:getProperty name="dto" property="email1" /> @ 
    			  <jsp:getProperty name="dto" property="email2" /> <br />
    	수신여부 => <jsp:getProperty name="dto" property="ox" /> <br />
    	
    </font>
    
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


PreparedStatement pstmt1 = 
conn.prepareStatement("select * from joinex");
ResultSet rs = pstmt1.executeQuery();

while(rs.next()){
	String aid = rs.getString("id");
	String apw = rs.getString("pw");
	String aname = rs.getString("name");
	String ajumin1 = rs.getString("jumin1");
	String ajumin2 = rs.getString("jumin2");
	String aaddr = rs.getString("addr");
	String abirth1 = rs.getString("birth1");
	String abirth2 = rs.getString("birth2");
	String aphone1 = rs.getString("phone1");
	String aphone2 = rs.getString("phone2");
	String aphone3 = rs.getString("phone3");
	String agender = rs.getString("gender");
	String aemail1 = rs.getString("email1");
	String aemail2 = rs.getString("email2");
	String aemailox = rs.getString("emailox");
	Timestamp reg = rs.getTimestamp("reg");
	%> <%=id %> <%=pw %> <%=name %> <%=jumin1 %> <%=jumin2 %> <%=addr %> 
	<%=birth1%> <%=birth2%> <%=phone1 %> <%=phone2 %> <%=phone3 %> <%=gender %> <%=email1 %> <%=email2 %> <%=emailox %> <%=reg %>  <br />
	<%}
	rs.close();

pstmt.close();
conn.close();	
%>
	