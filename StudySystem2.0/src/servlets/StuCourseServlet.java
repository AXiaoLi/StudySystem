package servlets;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.BaseServlet;
import domain.Course;
import domain.Student;
import service.StuCourseService;

public class StuCourseServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	// 学生：我的课程
	public String stuFindCourseList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1_调用业务层功能，返回存储着Course对象的集合
		Student stu = (Student) (request.getSession().getAttribute("stu"));
		StuCourseService stuCourseService = new StuCourseService();
		List<Course> list = stuCourseService.stuFindCourseList(stu);// 查询课程,返回集合
		// 2_将集合放入request域对象内
		request.setAttribute("list", list);
		// 3_转发到/stu/courseList.jsp
		return "/stu/courseList.jsp";
	}

	// stuFindCourseByCid
	public String stuFindCourseByCid(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 获取课程ID参数
		String cId = request.getParameter("id");
		// 调用业务层功能：根据课程ID查询对应的课程对象
		StuCourseService stuCourseService = new StuCourseService();
		Course course = stuCourseService.stuFindCourseByCid(cId);
		// 将查询到的课程对象放入request
		request.getSession().setAttribute("course", course);
		// 转发到/stu/course/courseDetail.jsp
		return "/stu/course/courseDetail.jsp";
	}

	//stuSearchCourseUI
	public String stuSearchCourseUI(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "/stu/searchCourse/searchCourse.jsp";
	}
	
	//searchCourseByCName
	public String searchCourseByCName(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		return "/stu/searchCourse/searchCourse.jsp";
	}
}
