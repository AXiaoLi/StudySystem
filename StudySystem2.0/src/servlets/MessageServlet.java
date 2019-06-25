package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.BaseServlet;

public class MessageServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	//findMessagesWithPageByStudent
	public String findMessagesWithPageByStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		return "/stu/message/messageMana.jsp";
	}

	
	

}
