package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.MemDAO;
import test.dto.MemDTO;
/*
 * 1.HttpServlet 클래스 상속받기
 * 2.service() 메소드 오버라이딩
 */
public class MemberServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		//DB 에서 자료를 읽어와서 클라이언트에 출력!
		MemDAO dao=MemDAO.getInstance();
		//DAO 객체를 이용해서 회원목록을 얻어온다.
		ArrayList<MemDTO> list=dao.getList();
		
		//클라이언트의 웹브라우저에 출력한다.
		response.setContentType("text/html;charset=utf-8");
		//클라이언트에 출력할수 있는 Writer 객체 얻어오기.
		PrintWriter pw=response.getWriter();
		pw.println("<html><head><title>회원정보</title></head><body>");
		pw.println("<ul>");
		for(MemDTO dto: list){
			pw.println("<li>");
			pw.println("번호:"+dto.getNum());
			pw.println("이름:"+dto.getName());
			pw.println("주소:"+dto.getAddr());
			pw.println("</li>");
		}
		pw.println("</ul>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}




















