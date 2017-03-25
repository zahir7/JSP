<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="test.dto.FileupDTO"%>
<%@page import="test.dao.FileupDAO"%>
<%@ page pageEncoding="UTF-8"%>
<% 
	//클라이언트에 파일 다운로드 해주기
	
	//파일번호
	int num = Integer.parseInt(request.getParameter("filenum"));
	FileupDAO dao=FileupDAO.getInstance();
	//다운로드할 파일에 대한 정보를 DB 에서 읽어온다.
	FileupDTO dto=dao.getData(num);
	//원본 파일명
	String orgFileName=dto.getOrgFileName();
	//실제 저장된 파일명
	String saveFileName=dto.getSaveFileName();
	//다운로드할 경로만들기
	String path=application.getRealPath("/upload/"+saveFileName);
	//다운로드할 파일을 읽어올수 있는 스트림 객체 생성하기
	FileInputStream fis=new FileInputStream(path);
	
	//다운로드 창에 한글이깨지지 않도록
	response.setHeader("Content-Disposition",
			"attachment;filename="+
			new String(orgFileName.getBytes("utf-8"),"8859_1"));
	//인코딩을 바이너리 형태로
	response.setHeader("Content-Transfer-Encoding", "binary");
	//다운로드할 파일의 크기 설정
	File file=new File(path);
	
	response.setContentLength((int)file.length());
	//클라이언트로 출력할 스트림 객체 얻어오기
	BufferedOutputStream bos=
		new BufferedOutputStream(response.getOutputStream());
	//클라이언트로 출력하기
	byte[] buffer=new byte[1024*1024];
	int readedByte=0;
	while(true){
		readedByte=fis.read(buffer);
		if(readedByte == -1)break;
		bos.write(buffer, 0, readedByte);
		bos.flush();
	}
	bos.close();
	fis.close();
%>












