package service;

import java.sql.SQLException;
import java.util.List;

import dao.StuCourseDao;
import domain.Course;
import domain.Student;

public class StuCourseService {

	public List<Course> stuFindCourseList(Student stu) throws SQLException {
		// 调用DAO层功能，返回一个存储着Student对象的集合
		StuCourseDao stuCourseDao = new StuCourseDao();
		return stuCourseDao.stuFindCourseList(stu);
	}
	
	public Course stuFindCourseByCid(String cId) throws SQLException {
		// 调用DAO层根据视频ID获取视频对象
		StuCourseDao stuCourseDao = new StuCourseDao();
		return stuCourseDao.stuFindCourseByCid(cId);
	}

}
