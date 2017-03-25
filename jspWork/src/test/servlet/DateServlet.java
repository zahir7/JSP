package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 *  ���� ����� ��
 *  1.HttpServlet Ŭ������ ��� �޴´�.
 *  2.service() �޼ҵ带 ���� ���̵��Ѵ�.
 *  3.�ʿ��� ������ �����Ѵ�.
 *  4.Ŭ���̾�Ʈ�� ���������� ������ ���ش�.
 */
public class DateServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, 
								HttpServletResponse response)
			throws ServletException, IOException {
		//�ʿ��� ������ �����Ѵ�.
		Date d=new Date(); //Date ��ü ����
		//���乮�� ������ ���Ѵ�
		response.setContentType("text/html;charset=utf-8");
		//Ŭ���̾�Ʈ�� ���������� ����Ҽ� �ִ� ��ü�� ���´�.
		PrintWriter pw=response.getWriter();
		pw.println("<html><head></head>");
		pw.println("<body>");
		pw.println("�ȳ��ϼ���! ��ȣ �����Դϴ�.");
		pw.println("<br/>");
		pw.println("���� ��¥:"+d);
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
		
		/*
		<html>
			<head>
				<title></title>
			</head>
			<body>
				���� ��¥�� d �Դϴ�.
			</body>
		</html>
		*/
		
	}
}
















