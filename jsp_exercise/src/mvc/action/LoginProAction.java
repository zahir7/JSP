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
		//�α����� �� ������ loginPro.jsp
		int check = 1;
		HttpSession session = request.getSession();
		if(check == 1){
			session.setAttribute("memId", id);  // session�� �ѹ� ��������� ��𼭵� ��밡��
		}
		request.setAttribute("check", new Integer(check));
		request.setAttribute("reId", id);  // request�� ������� ������������ ��밡��
		return "/0306/loginPro.jsp";
	}

	

}
