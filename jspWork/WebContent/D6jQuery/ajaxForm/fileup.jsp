<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page pageEncoding="UTF-8"%>
<%
	//업로드 폴더의 실제 경로를 얻어온다.
	String dir=application.getRealPath("/upload");
	int sizeLimit = 1024*1024*5 ;//최대 5M byte
	//객체가 생성되는 순간 업로드가 완료된다.
	MultipartRequest mr=new MultipartRequest(request,
				dir, sizeLimit, "utf-8",new DefaultFileRenamePolicy());
	//전송된 파일 명을  반복자 형태로 읽어온다.
	Enumeration files=mr.getFileNames();
	
	String name=null;
	String fileName=null;
	//파일 정보가 있다면
	while(files.hasMoreElements()){
		//전송된 파일 명을 읽어온다.
		name=(String)files.nextElement();
	}
	String orgName=mr.getOriginalFileName(name);
	//전송된 content 읽어오기
	String content=mr.getParameter("content");
	String[] check=mr.getParameterValues("Check");
	System.out.println("전송된 파일명:"+orgName);
	System.out.println("content:"+content);
%>










