package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.BaseServlet;

public class HomeworkServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
    //findHomeworksWithPageByStudent
	public String findHomeworksWithPageByStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		return "/stu/homework/homeworkMana.jsp";
	}
}
