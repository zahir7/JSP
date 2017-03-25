package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 *  서블릿 만드는 법
 *  1.HttpServlet 클래스를 상속 받는다.
 *  2.service() 메소드를 오버 라이딩한다.
 *  3.필요한 로직을 수행한다.
 *  4.클라이언트의 웹브라우저에 응답을 해준다.
 */
public class DateServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, 
								HttpServletResponse response)
			throws ServletException, IOException {
		//필요한 로직을 수행한다.
		Date d=new Date(); //Date 객체 생성
		//응답문서 형식을 정한다
		response.setContentType("text/html;charset=utf-8");
		//클라이언트의 웹브라우저에 출력할수 있는 객체를 얻어온다.
		PrintWriter pw=response.getWriter();
		pw.println("<html><head></head>");
		pw.println("<body>");
		pw.println("안녕하세요! 태호 서블릿입니다.");
		pw.println("<br/>");
		pw.println("오늘 날짜:"+d);
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
		
		/*
		<html>
			<head>
				<title></title>
			</head>
			<body>
				오늘 날짜는 d 입니다.
			</body>
		</html>
		*/
		
	}
}
















