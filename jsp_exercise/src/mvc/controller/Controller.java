package mvc.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.action.SuperAction;

public class Controller extends HttpServlet {
	static HashMap map = new HashMap();
	public void init(ServletConfig config) throws ServletException {  //Properties�� ���ǵ� ��ü�� �����ϱ� ���ؼ� ���
		String path = config.getInitParameter("path");  // properties ������ ���
		
		FileInputStream f = null; //������ ���� ������ �ٲ㼭 ����� �� �ֵ���
		Properties pr = new Properties();
		try {
			f = new FileInputStream(path); // f�� path ���
			pr.load(f); // Properties �ε�
			Iterator iter = pr.keySet().iterator(); //�ݺ��� ,3��
			
			while(iter.hasNext()){
				String key = (String)iter.next(); // hasNext�޼��尡 �ִ��� ������ Ȯ��, next�޼��尡 ����
				String value = pr.getProperty(key); // �ش� Ű�� ������ �ִ� value ���� ������
				Class className = Class.forName(value); // Ŭ������ ������ �־��� LoginFormAction className;
				Object obj = className.newInstance(); // ��ü�� �ٲ㼭 �־��� className = new LoginFormAction() 
				map.put(key, obj); //Ű�� �״��, obj�� ������ ��ü
			}
		} catch(Exception e){
			e.printStackTrace();
		}	
	}
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();		
		SuperAction sa = (SuperAction)map.get(uri);		
		String view = sa.action(request, response);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
		
	}
}
