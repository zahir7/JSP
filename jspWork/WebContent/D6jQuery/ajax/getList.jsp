<%@page import="java.util.ArrayList"%>
<%@page import="test.dto.MemDTO"%>
<%@ page pageEncoding="UTF-8"%>
<%
	//회원정보를 DB 에서 받아왔다고 가정
	MemDTO dto1=new MemDTO(1,"김태호","노량진");
	MemDTO dto2=new MemDTO(2,"이현진","당구장");
	MemDTO dto3=new MemDTO(3,"주용군","한게임?");
	ArrayList<MemDTO> list=new ArrayList<MemDTO>();
	list.add(dto1);
	list.add(dto2);
	list.add(dto3);
	
	//클라이언트가 요청한 자료를 JSON 형태로 응답해준다.
	out.print("{\"members\":[");
	int count=0;
	for(MemDTO tmp : list){
		count++;
		out.print("{");
		out.print("\"num\":\""+tmp.getNum()+"\"");
		out.print(",");
		out.print("\"name\":\""+tmp.getName()+"\"");
		out.print(",");
		out.print("\"addr\":\""+tmp.getAddr()+"\"");
		out.print("}");
		if(count==list.size())break;
		out.print(",");
	}
	out.print("]}");
%>















