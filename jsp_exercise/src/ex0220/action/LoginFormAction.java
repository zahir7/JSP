package ex0220.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.action.CommandAction;

public class LoginFormAction implements CommandAction{	
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		
		return "/0220ex/loginForm.jsp";
	}

}
