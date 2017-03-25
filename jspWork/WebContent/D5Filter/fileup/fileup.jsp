<%@page import="test.dao.FileupDAO"%>
<%@page import="test.dto.FileupDTO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page pageEncoding="UTF-8"%>
<%
	//파일이 저장될 upload 폴더의 실제 경로 얻어오기
	String dir=application.getRealPath("/upload");
	System.out.println(dir); //파일이 저장된 경로 확인해보기
	//MultiPartRequest 객체 생성하기
	MultipartRequest mr=new MultipartRequest(request,
			dir, //파일을 저장할 디렉토리
			1024*1024*5, // 최대 업로드 크기 5M byte
			"utf-8", 	//파일 전송정보 인코딩설정
			//동일한 파일명이 있으면 자동으로 파일명을 변경해주는 객체.
			new DefaultFileRenamePolicy()); 
	
	//MultiPart/form-data 로 전송을 하면 request 객체를 사용하지 않고
	//MultiPartRequest 객체를 사용해야한다.
	String writer=mr.getParameter("writer");
	String title=mr.getParameter("title");
	String content=mr.getParameter("content");
	//원본 파일명 얻어오기
	String orgFileName=mr.getOriginalFileName("file1");
	String saveFileName=mr.getFilesystemName("file1");
	System.out.println("작성자:"+writer+" 파일명:"+orgFileName);
	//전송된 정보를 DTO 에 담는다
	FileupDTO dto=
	new FileupDTO(0, writer, title, content, orgFileName, saveFileName);
	//DAO 객체의 참조값을 얻어온다.
	FileupDAO dao=FileupDAO.getInstance();
	//DB 에 파일정보를 저장한다.
	boolean isSuccess = dao.insert(dto);
	if(isSuccess){%>
		<script>
			alert("저장성공!");
			location.href="showList.jsp";//목록보기페이지로 이동
		</script>
	<%}else{%>
		<script>
			alert("저장실패!");
			location.href="showList.jsp";
		</script>
	<%}%>




















