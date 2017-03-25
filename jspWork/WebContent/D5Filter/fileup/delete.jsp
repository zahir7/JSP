<%@page import="java.io.File"%>
<%@page import="test.dto.FileupDTO"%>
<%@page import="test.dao.FileupDAO"%>
<%@ page pageEncoding="UTF-8"%>
<% 
	//파라미터로 넘어오는 삭제할 파일의 파일번호를 얻어온다.
	int num=Integer.parseInt(request.getParameter("filenum"));
	FileupDAO dao=FileupDAO.getInstance();
	FileupDTO dto=dao.getData(num);
	//1.DB 에서 해당파일정보를 삭제한다.
	dao.delete(num);
	//2.파일 시스템에서도 삭제한다.
	String path=application.getRealPath("/upload/"+dto.getSaveFileName());
	File file=new File(path);
	boolean isDelete=file.delete(); //파일삭제
	if(isDelete){%>
		<script>
			alert("파일 삭제 성공!");
			location.href="showList.jsp";
		</script>
	<%}else{%>
		<script>
			alert("파일 삭제 실패!");
			location.href="showList.jsp";
		</script>
	<%}%>







