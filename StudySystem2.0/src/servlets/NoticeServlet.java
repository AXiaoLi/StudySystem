package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.BaseServlet;

/**
 * Servlet implementation class NoticeServlet
 */
public class NoticeServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    //findNoticeByTeacher
	public String findNoticeByTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		return "/tea/notice/noticeMana.jsp";
	}
	
	//deleteNoticeByTeacher
	public String deleteNoticeByTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		return "/tea/notice/noticeMana.jsp";
	}
	
	//addNotice
	public String addNotice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		return "/tea/notice/noticeMana.jsp";
	}
}
