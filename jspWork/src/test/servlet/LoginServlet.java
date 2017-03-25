package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 * 회원의 로그인 정보가 넘어오는 서블릿 만들어 보기.
 */
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		
		//인코딩 설정하기(post 방식 전송일때 한글 안깨지게 하기)
		request.setCharacterEncoding("utf-8");
		//form 전송된 파라미터 읽어오기
		String id = request.getParameter("id");
		String pwd=request.getParameter("pwd");
		System.out.println("클라이언트가 전송한 값:"+id+" / "+pwd);
		
		/*
		 *  DB 에서 id 와 pwd 정보가 유효한 정보인지 판단한다음 
		 *  클라이언트에 응답한다.
		 */
		//DB 에 id : taeho   pwd : 1234 라는 정보가 있다고 가정하자
		
		boolean isMember = false; //회원인지 아닌지 판단하는 변수
		
		if(id.equals("taeho") && pwd.equals("1234")){
			//회원이 맞는 경우
			isMember=true;
		}
		//클라이언트에 응답하기
		response.setContentType("text/html;charset=utf-8");
		//클라이언트에 출력할수 있는 객체 얻어오기.
		PrintWriter pw=response.getWriter();
		
		//HTML 형식으로 출력하기
		pw.println("<html><head><title>제목입니다.</title><head><body>");
		if(isMember){//회원인 경우
			pw.println(id+" 회원님 조낸 방가!방가!");
		}else{ //회원이 아닌경우!
			pw.println("<script type='text/javascript'>");
			pw.println("alert('아이디혹은 비밀번호가 틀려요!');");
			pw.println("</script>");
		}
		pw.println("</body></html>");
		pw.close();
		
		
	}
}












