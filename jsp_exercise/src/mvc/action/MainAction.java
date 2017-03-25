package mvc.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction implements SuperAction{

	public String action(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		return "/0306/main.jsp";
	}

}
