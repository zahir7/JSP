package ex0220.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.action.CommandAction;

public class LogoutAction implements CommandAction{	
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		HttpSession session = request.getSession();
				session.invalidate();				
		return "/0220ex/logout.jsp";
	}
}
