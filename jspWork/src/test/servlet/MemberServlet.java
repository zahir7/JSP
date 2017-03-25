package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.MemDAO;
import test.dto.MemDTO;
/*
 * 1.HttpServlet Ŭ���� ��ӹޱ�
 * 2.service() �޼ҵ� �������̵�
 */
public class MemberServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		//DB ���� �ڷḦ �о�ͼ� Ŭ���̾�Ʈ�� ���!
		MemDAO dao=MemDAO.getInstance();
		//DAO ��ü�� �̿��ؼ� ȸ������� ���´�.
		ArrayList<MemDTO> list=dao.getList();
		
		//Ŭ���̾�Ʈ�� ���������� ����Ѵ�.
		response.setContentType("text/html;charset=utf-8");
		//Ŭ���̾�Ʈ�� ����Ҽ� �ִ� Writer ��ü ������.
		PrintWriter pw=response.getWriter();
		pw.println("<html><head><title>ȸ������</title></head><body>");
		pw.println("<ul>");
		for(MemDTO dto: list){
			pw.println("<li>");
			pw.println("��ȣ:"+dto.getNum());
			pw.println("�̸�:"+dto.getName());
			pw.println("�ּ�:"+dto.getAddr());
			pw.println("</li>");
		}
		pw.println("</ul>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}




















