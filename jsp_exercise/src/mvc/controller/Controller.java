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
	public void init(ServletConfig config) throws ServletException {  //Properties에 정의된 객체를 생성하기 위해서 사용
		String path = config.getInitParameter("path");  // properties 파일의 경로
		
		FileInputStream f = null; //설정한 것을 정보로 바꿔서 사용할 수 있도록
		Properties pr = new Properties();
		try {
			f = new FileInputStream(path); // f는 path 경로
			pr.load(f); // Properties 로딩
			Iterator iter = pr.keySet().iterator(); //반복자 ,3개
			
			while(iter.hasNext()){
				String key = (String)iter.next(); // hasNext메서드가 있는지 없는지 확인, next메서드가 추출
				String value = pr.getProperty(key); // 해당 키가 가지고 있는 value 값을 꺼내줌
				Class className = Class.forName(value); // 클래스에 정보를 넣어줌 LoginFormAction className;
				Object obj = className.newInstance(); // 객체로 바꿔서 넣어줌 className = new LoginFormAction() 
				map.put(key, obj); //키는 그대로, obj는 생성된 객체
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
