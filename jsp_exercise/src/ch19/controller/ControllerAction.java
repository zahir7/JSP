package ch19.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import ch19.action.CommandAction;

public class ControllerAction extends HttpServlet {
    
    private Map commandMap = new HashMap();//��ɾ�� ��ɾ� ó�� Ŭ������ ������ ����

    //��ɾ�� ó��Ŭ������ ���εǾ� �ִ� properties ������ �о Map��ü�� commandMap�� ����
	//��ɾ�� ó��Ŭ������ ���εǾ� �ִ� properties ������ Command.properties����
    public void init(ServletConfig config) throws ServletException { 
        String props = config.getInitParameter("propertyConfig");//web.xml���� propertyConfig�� �ش��ϴ� init-param �� ���� �о��
        Properties pr = new Properties();//��ɾ�� ó��Ŭ������ ���������� ������ Properties��ü ����
        FileInputStream f = null;
        try {
            f = new FileInputStream(props); //Command.properties������ ������ �о��
            pr.load(f);//Command.properties������ ������  Properties��ü�� ����
        } catch (IOException e) {
            throw new ServletException(e);
        } finally {
            if (f != null) try { f.close(); } catch(IOException ex) {}
        }
        Iterator keyIter = pr.keySet().iterator();//Iterator��ü�� Enumeration��ü�� Ȯ���Ų ������ ��ü
        while( keyIter.hasNext() ) {//��ü�� �ϳ��� ������ �� ��ü������ Properties��ü�� ����� ��ü�� ����
            String command = (String)keyIter.next();
            String className = pr.getProperty(command);
            try {
                Class commandClass = Class.forName(className);//�ش� ���ڿ��� Ŭ������ �����.
                Object commandInstance = commandClass.newInstance();//�ش�Ŭ������ ��ü�� ����
                commandMap.put(command, commandInstance);// Map��ü�� commandMap�� ��ü ����
            } catch (ClassNotFoundException e) {
                throw new ServletException(e);
            } catch (InstantiationException e) {
                throw new ServletException(e);
            } catch (IllegalAccessException e) {
                throw new ServletException(e);
            }
        }
    }

    public void doGet(//get����� ���� �޼ҵ�
        HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        requestPro(request, response);
    }

    protected void doPost(//post����� ���� �޼ҵ�
        HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        requestPro(request, response);
    }

    //�ÿ����� ��û�� �м��ؼ� �ش� �۾��� ó��
    private void requestPro(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException {
		String view = null;
        CommandAction com=null;
		try {
            String command = request.getRequestURI(); // command : /jsp/ch19/list.do
            if (command.indexOf(request.getContextPath()) == 0) { // indexOF:������ ���ڿ��� ��ġ,  0��° : /jsp(ContextPath)
               command = command.substring(request.getContextPath().length()); //substring : �߶󳻱� /jsp�� ���� , request.getContextPath().length()=4
            }
            com = (CommandAction)commandMap.get(command);  
            view = com.requestPro(request, response);
        } catch(Throwable e) {
            throw new ServletException(e);
        }   
        RequestDispatcher dispatcher =request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}
