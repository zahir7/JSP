package mvc.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginProAction implements SuperAction{

	public String action(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		//로그인할 때 썻던것 loginPro.jsp
		int check = 1;
		HttpSession session = request.getSession();
		if(check == 1){
			session.setAttribute("memId", id);  // session은 한번 만들어지면 어디서든 사용가능
		}
		request.setAttribute("check", new Integer(check));
		request.setAttribute("reId", id);  // request는 포워드된 페이지에서만 사용가능
		return "/0306/loginPro.jsp";
	}

	

}
