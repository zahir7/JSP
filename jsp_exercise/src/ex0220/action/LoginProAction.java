package ex0220.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch11.logonex.LogonDBBean;
import board.action.CommandAction;

public class LoginProAction implements CommandAction{	
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {	


		request.setCharacterEncoding("euc-kr");

		
		String id = request.getParameter("id");
		String passwd  = request.getParameter("pw");
			
		LogonDBBean manager = LogonDBBean.getInstance();
		int check= manager.userCheck(id,passwd);
		
		request.setAttribute("check", check);
		
		HttpSession session = request.getSession();
		session.setAttribute("memId", id);	
		
		
		return "/0220ex/loginPro.jsp";
	}
}
