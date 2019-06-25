package service;

import java.sql.SQLException;
import java.util.List;

import dao.TeaCourseDao;
import dao.VedioDao;
import domain.Course;
import domain.Teacher;

public class TeaCourseService {

	public List<Course> teaFindCourseList(Teacher tea) throws SQLException {
		// 调用DAO层功能，返回一个存储着Teacher对象的集合
		TeaCourseDao teaCourseDao = new TeaCourseDao();
		return teaCourseDao.teaFindCourseList(tea);
	}

	public Course teaFindCourseByCid(String cId) throws SQLException {
		// 调用DAO层根据视频ID获取视频对象
		TeaCourseDao teaCourseDao = new TeaCourseDao();
		return teaCourseDao.teaFindCourseByCid(cId);
	}

	public void addTeaCourse(Course course) throws SQLException {
		TeaCourseDao teaCourseDao = new TeaCourseDao();
		teaCourseDao.addTeaCourse(course);

	}

	public void deleteCourseByTeacher(String cId) throws SQLException {
		// 调用DAO层，根据课程编号删除课程功能
		TeaCourseDao teaCourseDao = new TeaCourseDao();
		teaCourseDao.deleteCourseByTeacher(cId);
	}

}
