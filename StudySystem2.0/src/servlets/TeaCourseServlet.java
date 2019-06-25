package servlets;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.BaseServlet;
import domain.Course;
import domain.Teacher;
import service.TeaCourseService;
import service.VedioService;

public class TeaCourseServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	// teaFindCourseList
	public String teaFindCourseList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1_调用业务层功能，返回存储着Course对象的集合
		Teacher tea = (Teacher) (request.getSession().getAttribute("tea"));
		TeaCourseService teaCourseService = new TeaCourseService();
		List<Course> list = teaCourseService.teaFindCourseList(tea);// 查询课程,返回集合
		// 2_将集合放入request域对象内
		request.setAttribute("list", list);
		// 3_转发到/stu/course/courseList.jsp
		return "/tea/courseList.jsp";
	}

	// teaFindCourseByCid
	public String teaFindCourseByCid(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 获取课程ID参数
		String cId = request.getParameter("id");
		// 调用业务层功能：根据课程ID查询对应的课程对象
		TeaCourseService teaCourseService = new TeaCourseService();
		Course course = teaCourseService.teaFindCourseByCid(cId);
		// 将查询到的课程对象放入request
		request.getSession().setAttribute("course", course);
		// 转发到/stu/course/courseDetail.jsp
		return "/tea/course/courseDetail.jsp";
	}

	// addTeaCourseUI
	public String addTeaCourseUI(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "/tea/course/teaCourseAdd.jsp";
	}

	// addTeaCourse
	public String addTeaCourse(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 接收参数
		String teaCourseName = request.getParameter("teaCourseName");
		String teaNum = request.getParameter("teaNum");
		String info = request.getParameter("info");
		Course course = new Course();
		course.setcName(teaCourseName);
		course.setTeaNum(teaNum);
		course.setInfo(info);
		// 调用业务层添加老师功能
		TeaCourseService teaCourseService = new TeaCourseService();
		teaCourseService.addTeaCourse(course);
		// 重定向到我的课程页面
		response.sendRedirect("/StudySystem2.0/TeaCourseServlet?method=teaFindCourseList");
		return null;
		// request.getSession().setAttribute("tea", teacher);
		// return "/course/msg.jsp";
	}

	// deleteCourseByTeacher
	public String deleteCourseByTeacher(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 获取待删除课程的编号
		String cId = request.getParameter("id");
		// 调用业务层功能，根据课程编号删除课程
		TeaCourseService teaCourseService = new TeaCourseService();
		teaCourseService.deleteCourseByTeacher(cId);
		// 重定向到查询全部课程路径
		response.sendRedirect("/StudySystem2.0/TeaCourseServlet?method=teaFindCourseList");
		return null;
	}
}
