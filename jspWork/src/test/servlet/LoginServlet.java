package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 * ȸ���� �α��� ������ �Ѿ���� ���� ����� ����.
 */
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		
		//���ڵ� �����ϱ�(post ��� �����϶� �ѱ� �ȱ����� �ϱ�)
		request.setCharacterEncoding("utf-8");
		//form ���۵� �Ķ���� �о����
		String id = request.getParameter("id");
		String pwd=request.getParameter("pwd");
		System.out.println("Ŭ���̾�Ʈ�� ������ ��:"+id+" / "+pwd);
		
		/*
		 *  DB ���� id �� pwd ������ ��ȿ�� �������� �Ǵ��Ѵ��� 
		 *  Ŭ���̾�Ʈ�� �����Ѵ�.
		 */
		//DB �� id : taeho   pwd : 1234 ��� ������ �ִٰ� ��������
		
		boolean isMember = false; //ȸ������ �ƴ��� �Ǵ��ϴ� ����
		
		if(id.equals("taeho") && pwd.equals("1234")){
			//ȸ���� �´� ���
			isMember=true;
		}
		//Ŭ���̾�Ʈ�� �����ϱ�
		response.setContentType("text/html;charset=utf-8");
		//Ŭ���̾�Ʈ�� ����Ҽ� �ִ� ��ü ������.
		PrintWriter pw=response.getWriter();
		
		//HTML �������� ����ϱ�
		pw.println("<html><head><title>�����Դϴ�.</title><head><body>");
		if(isMember){//ȸ���� ���
			pw.println(id+" ȸ���� ���� �氡!�氡!");
		}else{ //ȸ���� �ƴѰ��!
			pw.println("<script type='text/javascript'>");
			pw.println("alert('���̵�Ȥ�� ��й�ȣ�� Ʋ����!');");
			pw.println("</script>");
		}
		pw.println("</body></html>");
		pw.close();
		
		
	}
}












